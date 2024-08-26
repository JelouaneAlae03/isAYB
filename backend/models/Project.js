const mongoose = require('mongoose');

const projectSchema = new mongoose.Schema({
  libelle: { type: String, required: true },
  description: String,
  date_debut: Date,
  date_fin: Date
});

module.exports = mongoose.model('Project', projectSchema);
