const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  nom_complet: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
//   service: {
//     type: mongoose.Schema.Types.ObjectId,
//     ref: 'Service'
//   }
});

module.exports = mongoose.model('User', userSchema);
