// routes/agendaRoutes.js
const express = require('express');
const Agenda = require('../models/Agenda');

const router = express.Router();

// Ajouter des tâches pour une date spécifique
router.post('/add-task', async (req, res) => {
  const { date, task } = req.body;

  try {
    let agenda = await Agenda.findOne({ date: new Date(date) });

    if (agenda) {
      // Si un agenda existe déjà pour cette date, ajoutez la tâche à la liste des tâches
      agenda.tasks.push(task);
    } else {
      // Sinon, créez un nouvel agenda pour cette date
      agenda = new Agenda({
        date: new Date(date),
        tasks: [task],
      });
    }

    await agenda.save();
    res.status(201).json({ message: 'Tâche ajoutée avec succès', agenda });
  } catch (err) {
    res.status(500).json({ message: 'Erreur lors de l\'ajout de la tâche', error: err.message });
  }
});

// Obtenir les tâches pour une date spécifique
router.get('/get-tasks/:date', async (req, res) => {
  const { date } = req.params;

  try {
    const agenda = await Agenda.findOne({ date: new Date(date) });

    if (!agenda) {
      return res.status(404).json({ message: 'Aucune tâche trouvée pour cette date' });
    }
    res.status(200).json(agenda);
  } catch (err) {
    res.status(500).json({ message: 'Erreur lors de la récupération des tâches', error: err.message });
  }
});


// Ajouter une tâche
router.post('/add-task', async (req, res) => {
  const { date, task } = req.body;

  try {
    let agenda = await Agenda.findOne({ date: new Date(date) });
    
    if (!agenda) {
      agenda = new Agenda({ date: new Date(date), tasks: [] });
    }

    agenda.tasks.push({ task, validated: false });
    await agenda.save();

    res.status(201).json(agenda);
  } catch (err) {
    res.status(500).json({ message: 'Erreur lors de l\'ajout de la tâche', error: err.message });
  }
});

// Supprimer une tâche
router.delete('/delete-task', async (req, res) => {
  const { date, task } = req.body;

  try {
    let agenda = await Agenda.findOne({ date: new Date(date) });

    if (!agenda) {
      return res.status(404).json({ message: 'Aucune tâche trouvée pour cette date' });
    }

    agenda.tasks = agenda.tasks.filter(t => t.task !== task);
    await agenda.save();

    res.status(200).json(agenda);
  } catch (err) {
    res.status(500).json({ message: 'Erreur lors de la suppression de la tâche', error: err.message });
  }
});

// Valider une tâche
router.post('/validate-task', async (req, res) => {
  const { date, task } = req.body;

  try {
    let agenda = await Agenda.findOne({ date: new Date(date) });

    if (!agenda) {
      return res.status(404).json({ message: 'Aucune tâche trouvée pour cette date' });
    }

    agenda.tasks = agenda.tasks.map(t => t.task === task ? { ...t, validated: true } : t);
    await agenda.save();

    res.status(200).json(agenda);
  } catch (err) {
    res.status(500).json({ message: 'Erreur lors de la validation de la tâche', error: err.message });
  }
});
module.exports = router;