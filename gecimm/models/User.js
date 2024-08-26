const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  Nom_Complet: String,
  Service: {
    Libelle: String
  }
});

module.exports = mongoose.model('User', UserSchema);
