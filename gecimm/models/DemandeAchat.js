// // const mongoose = require('mongoose');
// // const Schema = mongoose.Schema;

// // const DemandeAchatSchema = new Schema({
// //   NumeroDA: { type: String, required: true },
// //   Date: { type: Date, required: true },
// //   Dest: { type: String, required: true },
// //   Demande: { type: String, required: true },
// //   SDest: { type: String, required: true },
// //   SDemande: { type: String, required: true },
// //   Projet: [{ type: String }],
// //   Articles: [{
// //     Reference: { type: String },
// //     libelle: { type: String },
// //     Qte: { type: Number },
// //     DatePrevLivraison: { type: Date }
// //   }],
// //   CodeStatut: { type: String }
// // });

// // module.exports = mongoose.model('DemandeAchat', DemandeAchatSchema);
// // // models/DemandeAchat.js
// const mongoose = require('mongoose');
// const Schema = mongoose.Schema;

// const demandeAchatSchema = new Schema({
//   NumeroDA: { type: String, required: true },
//   Date: { type: Date, required: true },
//   Dest: { type: String, required: true },
//   Demande: { type: String, required: true },
//   SDest: { type: String, required: true },
//   SDemande: { type: String, required: true },
//   Projet: [{ type: String }],
//   Articles: [{
//     Reference: { type: String },
//     libelle: { type: String },
//     Qte: { type: Number },
//     DatePrevLivraison: { type: Date }
//   }],
//   CodeStatut: { type: String }
// });

// const DemandeAchat = mongoose.model('DemandeAchat', demandeAchatSchema);
// module.exports = DemandeAchat;
const mongoose = require('mongoose');

const DemandeAchatSchema = new mongoose.Schema({
  NumeroDA: String,
  Date_Sys: Date,
  Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  Projet: [{ Libelle: String }],
  R_DemandeAchat_Article: [{
    Article: {
      Reference: String,
      libelle: String
    },
    Qte: Number,
    DatePrevLivraison: Date
  }],
  Demande_WorkFlow: Array
});

module.exports = mongoose.model('DemandeAchat', DemandeAchatSchema);
