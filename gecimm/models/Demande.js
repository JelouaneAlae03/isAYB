const mongoose = require('mongoose');

const demandeSchema = new mongoose.Schema({
  projet: { type: String, required: true },
  demandeur: { type: String, required: true },
  destinataire: { type: String, required: true },
  validation: { type: String, required: true },
  dateLivraison: { type: Date, required: true },
  dateTraitement: { type: Date, required: true },
});

module.exports = mongoose.model('Demande', demandeSchema);
