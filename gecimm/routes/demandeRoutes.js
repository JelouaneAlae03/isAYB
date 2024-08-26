const express = require('express');
const router = express.Router();
const { createDemande, getDemandes } = require('../controllers/demandeController');

// Route to create a new demand
router.post('/demandes', createDemande);

// Route to get all demands
router.get('/demandes', getDemandes);

module.exports = router;
