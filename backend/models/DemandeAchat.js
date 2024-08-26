const mongoose = require('mongoose');

const demandeAchatSchema = new mongoose.Schema({
  numeroDA: { type: String, required: true },
  date_sys: { type: Date, default: Date.now },
  utilisateur: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User'
  },
  utilisateur1: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User'
  },
  projet: [{
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Project'
  }],
  r_demandeAchat_article: [
    {
      article: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Article'
      },
      quantite: Number,
      date_prev_livraison: Date
    }
  ]
});

module.exports = mongoose.model('DemandeAchat', demandeAchatSchema);
