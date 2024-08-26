const Demande = require('../models/Demande');

// Create a new demand
exports.createDemande = async (req, res) => {
  try {
    const { projet, demandeur, destinataire, validation, dateLivraison, dateTraitement } = req.body;

    const newDemande = new Demande({
      projet,
      demandeur,
      destinataire,
      validation,
      dateLivraison,
      dateTraitement,
    });

    const savedDemande = await newDemande.save();
    res.status(201).json(savedDemande);
  } catch (error) {
    res.status(500).json({ message: 'Failed to create demand', error: error.message });
  }
};

// Get all demands
exports.getDemandes = async (req, res) => {
  try {
    const demandes = await Demande.find();
    res.status(200).json(demandes);
  } catch (error) {
    res.status(500).json({ message: 'Failed to retrieve demands', error: error.message });
  }
};
