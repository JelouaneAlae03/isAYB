// bonCommandeRoutes.js
const express = require('express');
const router = express.Router();
const verifyToken = require('../middleware/verifyToken');
const BonCommande = require('../models/BonCommande');

// Obtenir les détails du bon de commande
router.get('/DetailsBonCommande', verifyToken, async (req, res) => {
  const { IdBc } = req.query;
  const bonCommande = await BonCommande.findById(IdBc).populate('articles.article');
  if (!bonCommande) return res.status(404).send('Bon de Commande not found');

  res.json(bonCommande);
});

module.exports = router;
