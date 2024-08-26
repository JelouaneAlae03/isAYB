const mongoose = require('mongoose');

const articleSchema = new mongoose.Schema({
  reference: { type: String, required: true },
  libelle: { type: String, required: true },
  prix: Number
});

module.exports = mongoose.model('Article', articleSchema);
