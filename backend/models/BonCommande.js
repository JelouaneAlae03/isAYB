const mongoose = require('mongoose');

const bonCommandeSchema = new mongoose.Schema({
  numeroBC: { type: String, required: true },
  date_creation: { type: Date, default: Date.now },
  articles: [
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

module.exports = mongoose.model('BonCommande', bonCommandeSchema);
