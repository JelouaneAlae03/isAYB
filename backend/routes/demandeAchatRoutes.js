// const express = require('express');
// const router = express.Router();
// const verifyToken = require('../middleware/verifyToken');
// const DemandeAchat = require('../models/DemandeAchat');

// // // Valider le workflow de la demande d'achat
// // router.get('/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
// //   const { CodeDemande, Observation, IsAprouver } = req.query;

// //   // Logique de validation du workflow
// //   // ...

// //   res.send('Workflow validated');
// // });
// router.get('/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
//     const { CodeDemande, Observation, IsAprouver } = req.query;
  
//     try {
//       // Trouver la demande d'achat par son code
//       const demandeAchat = await DemandeAchat.findOne({ numeroDA: CodeDemande });
//       if (!demandeAchat) return res.status(404).send('Demande Achat not found');
  
//       // Mettre à jour la demande d'achat en fonction de l'approbation
//       demandeAchat.isApproved = IsAprouver === 'true';
//       demandeAchat.observation = Observation;
  
//       // Enregistrer les modifications
//       await demandeAchat.save();
  
//       res.send('Workflow validated');
//     } catch (err) {
//       res.status(500).send('An error occurred while validating the workflow');
//     }
//   });

// // Obtenir les détails de la demande d'achat
// router.get('/DetailsDemandeAchat', verifyToken, async (req, res) => {
//   const { idDa } = req.query;
//   const demandeAchat = await DemandeAchat.findById(idDa).populate('Utilisateur').populate('Utilisateur1').populate('Projet').populate('R_DemandeAchat_Article.Article');
//   if (!demandeAchat) return res.status(404).send('Demande Achat not found');

//   res.json({
//     NumeroDA: demandeAchat.numeroDA,
//     Date: demandeAchat.date_sys?.toISOString().split('T')[0],
//     Dest: demandeAchat.utilisateur?.nom_complet,
//     Demande: demandeAchat.utilisateur1?.nom_complet,
//     SDest: demandeAchat.utilisateur?.service.libelle,
//     SDemande: demandeAchat.utilisateur1?.service.libelle,
//     Projet: demandeAchat.projet.map(x => x.libelle).join(','),
//     Articles: demandeAchat.r_demandeAchat_article.map(x => ({
//       Reference: x.article.reference,
//       libelle: x.article.libelle,
//       Qte: x.quantite,
//       DatePrevLivraison: x.date_prev_livraison?.toISOString().split('T')[0]
//     }))
//   });
// });

// module.exports = router;
const express = require('express');
const router = express.Router();
const verifyToken = require('../middleware/verifyToken');
const DemandeAchat = require('../models/DemandeAchat');
const { AppError, handleError } = require('../utils/errorHandler');

// Valider le workflow de la demande d'achat
router.get('/ValideDemandeWorkFlow', verifyToken, async (req, res, next) => {
  const { CodeDemande, Observation, IsAprouver } = req.query;

  try {
    if (!CodeDemande || !Observation || typeof IsAprouver === 'undefined') {
      throw new AppError(400, 'Missing required parameters');
    }

    const demandeAchat = await DemandeAchat.findOne({ numeroDA: CodeDemande });
    if (!demandeAchat) {
      throw new AppError(404, 'Demande Achat not found');
    }

    demandeAchat.isApproved = IsAprouver === 'true';
    demandeAchat.observation = Observation;

    demandeAchat.status = demandeAchat.isApproved ? 'Approved' : 'Rejected';

    await demandeAchat.save();

    res.json({ message: 'Workflow validated', status: demandeAchat.status });
  } catch (err) {
    next(err); // Pass the error to the error handling middleware
  }
});

// Obtenir les détails de la demande d'achat
router.get('/DetailsDemandeAchat', verifyToken, async (req, res, next) => {
  const { idDa } = req.query;

  try {
    if (!idDa) {
      throw new AppError(400, 'Missing required parameter: idDa');
    }

    const demandeAchat = await DemandeAchat.findById(idDa)
      .populate('utilisateur')
      .populate('utilisateur1')
      .populate('projet')
      .populate('r_demandeAchat_article.article');

    if (!demandeAchat) {
      throw new AppError(404, 'Demande Achat not found');
    }

    res.json({
      NumeroDA: demandeAchat.numeroDA,
      Date: demandeAchat.date_sys?.toISOString().split('T')[0],
      Dest: demandeAchat.utilisateur?.nom_complet,
      Demande: demandeAchat.utilisateur1?.nom_complet,
      SDest: demandeAchat.utilisateur?.service.libelle,
      SDemande: demandeAchat.utilisateur1?.service.libelle,
      Projet: demandeAchat.projet.map(x => x.libelle).join(','),
      Articles: demandeAchat.r_demandeAchat_article.map(x => ({
        Reference: x.article.reference,
        libelle: x.article.libelle,
        Qte: x.quantite,
        DatePrevLivraison: x.date_prev_livraison?.toISOString().split('T')[0]
      })),
      Status: demandeAchat.status,
      Observation: demandeAchat.observation
    });
  } catch (err) {
    next(err); // Pass the error to the error handling middleware
  }
});

module.exports = router;
