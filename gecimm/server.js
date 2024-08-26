// // const express = require('express');
// // const bodyParser = require('body-parser');
// // const mongoose = require('mongoose');
// // const db = require('./db');
// // const app = express();

// // app.use(bodyParser.json());

// // // Modèles Mongoose (exemples)
// // const User = mongoose.model('User', new mongoose.Schema({
// //   Nom_Complet: String,
// //   Service: {
// //     Libelle: String
// //   }
// // }));

// // const Project = mongoose.model('Project', new mongoose.Schema({
// //   Libelle: String
// // }));

// // const Article = mongoose.model('Article', new mongoose.Schema({
// //   Reference: String,
// //   libelle: String
// // }));
// // const BonCommande = mongoose.model('BonCommande', new mongoose.Schema({
// //     NumeroBC: String,
// //     Date_Sys: Date,
// //     Fournisseur: { type: mongoose.Schema.Types.ObjectId, ref: 'Fournisseur' },
// //     Articles: [{
// //       Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
// //       Qte: Number,
// //       Prix: Number
// //     }]
// //   }));
  

// //   const DemandeAchat = mongoose.model('DemandeAchat', new mongoose.Schema({
// //     NumeroDA: String,
// //     Date_Sys: Date,
// //     Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
// //     Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
// //     Projet: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Project' }],
// //     R_DemandeAchat_Article: [{
// //       Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
// //       Qte: Number,
// //       DatePrevLivraison: Date
// //     }],
// //     Status: { type: String, enum: ['Pending', 'Approved', 'Rejected'], default: 'Pending' },
// //     Observation: String
// //   }));
  
// // // API ValideDemandeWorkFlow
// // app.post('/api/ValideDemandeWorkFlow', async (req, res) => {
// //     const { token, CodeDemande, Observation, IsAprouver } = req.body;
    
// //     // Vérifiez le token si nécessaire
    
// //     try {
// //       const demandeAchat = await DemandeAchat.findOne({ NumeroDA: CodeDemande });
// //       if (!demandeAchat) {
// //         return res.status(404).send({ success: false, message: "Demande d'achat non trouvée." });
// //       }
  
// //       demandeAchat.Status = IsAprouver ? 'Approved' : 'Rejected';
// //       demandeAchat.Observation = Observation;
  
// //       await demandeAchat.save();
  
// //       res.send({ success: true, message: "Demande mise à jour avec succès." });
// //     } catch (error) {
// //       res.status(500).send({ success: false, message: error.message });
// //     }
// //   });
  

// //   app.get('/api/DetailsBonCommande', async (req, res) => {
// //     const { token, IdBc } = req.query;
    
// //     // Vérifiez le token si nécessaire
    
// //     try {
// //       const bonCommande = await BonCommande.findById(IdBc).populate('Fournisseur Articles.Article');
// //       if (!bonCommande) {
// //         return res.status(404).send({ success: false, message: "Bon de commande non trouvé." });
// //       }
  
// //       res.send({
// //         success: true,
// //         NumeroBC: bonCommande.NumeroBC,
// //         Date: bonCommande.Date_Sys?.toISOString().split('T')[0],
// //         Fournisseur: bonCommande.Fournisseur?.Nom,
// //         Articles: bonCommande.Articles.map(x => ({
// //           Reference: x.Article.Reference,
// //           libelle: x.Article.libelle,
// //           Qte: x.Qte,
// //           Prix: x.Prix
// //         }))
// //       });
// //     } catch (error) {
// //       res.status(500).send({ success: false, message: error.message });
// //     }
// //   });
  
// // // API DetailsDemandeAchat
// // app.get('/api/DetailsDemandeAchat', async (req, res) => {
// //   const { token, idDa } = req.query;
// //   const demandeAchat = await DemandeAchat.findById(idDa).populate('Utilisateur Utilisateur1 Projet R_DemandeAchat_Article.Article');
// //   res.send({
// //     NumeroDA: demandeAchat.NumeroDA,
// //     Date: demandeAchat.Date_Sys?.toISOString().split('T')[0],
// //     Dest: demandeAchat.Utilisateur?.Nom_Complet,
// //     Demande: demandeAchat.Utilisateur1?.Nom_Complet,
// //     SDest: demandeAchat.Utilisateur?.Service.Libelle,
// //     SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
// //     Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
// //     Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
// //       Reference: x.Article.Reference,
// //       libelle: x.Article.libelle,
// //       Qte: x.Qte,
// //       DatePrevLivraison: x.DatePrevLivraison?.toISOString().split('T')[0]
// //     }))
// //   });
// // });

// // const PORT = process.env.PORT || 3000;
// // app.listen(PORT, () => {
// //   console.log(`Server is running on port ${PORT}`);
// // });
// const express = require('express');
// const bodyParser = require('body-parser');
// const mongoose = require('mongoose');
// const bcrypt = require('bcryptjs');
// const jwt = require('jsonwebtoken');
// const { check, validationResult } = require('express-validator');
// const db = require('./db');
// const app = express();

// app.use(bodyParser.json());

// const JWT_SECRET = 'your_jwt_secret'; // Remplacez par votre propre clé secrète

// // Modèles Mongoose (exemples)
// const User = mongoose.model('User', new mongoose.Schema({
//   Nom_Complet: String,
//   Email: { type: String, required: true, unique: true },
//   Password: { type: String, required: true },
//   Service: {
//     Libelle: String
//   }
// }));

// const Project = mongoose.model('Project', new mongoose.Schema({
//   Libelle: String
// }));

// const Article = mongoose.model('Article', new mongoose.Schema({
//   Reference: String,
//   libelle: String
// }));

// const BonCommande = mongoose.model('BonCommande', new mongoose.Schema({
//   NumeroBC: String,
//   Date_Sys: Date,
//   Fournisseur: { type: mongoose.Schema.Types.ObjectId, ref: 'Fournisseur' },
//   Articles: [{
//     Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
//     Qte: Number,
//     Prix: Number
//   }]
// }));

// const DemandeAchat = mongoose.model('DemandeAchat', new mongoose.Schema({
//   NumeroDA: String,
//   Date_Sys: Date,
//   Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
//   Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
//   Projet: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Project' }],
//   R_DemandeAchat_Article: [{
//     Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
//     Qte: Number,
//     DatePrevLivraison: Date
//   }],
//   Status: { type: String, enum: ['Pending', 'Approved', 'Rejected'], default: 'Pending' },
//   Observation: String
// }));

// // Middleware de vérification du token
// const verifyToken = (req, res, next) => {
//   const token = req.header('Authorization').replace('Bearer ', '');
//   if (!token) return res.status(401).send({ success: false, message: 'Access Denied' });

//   try {
//     const verified = jwt.verify(token, JWT_SECRET);
//     req.user = verified;
//     next();
//   } catch (error) {
//     res.status(400).send({ success: false, message: 'Invalid Token' });
//   }
// };

// // Route d'inscription
// app.post('/api/register', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Please enter a password with 6 or more characters').isLength({ min: 6 })
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Nom_Complet, Email, Password, Service } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (user) {
//       return res.status(400).json({ message: 'User already exists' });
//     }

//     user = new User({
//       Nom_Complet,
//       Email,
//       Password,
//       Service
//     });

//     const salt = await bcrypt.genSalt(10);
//     user.Password = await bcrypt.hash(Password, salt);

//     await user.save();

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, (err, token) => {
//       if (err) throw err;
//       res.json({ token });
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });

// // Route de connexion
// app.post('/api/login', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Password is required').exists()
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Email, Password } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (!user) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const isMatch = await bcrypt.compare(Password, user.Password);
//     if (!isMatch) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, (err, token) => {
//       if (err) throw err;
//       res.json({ token });
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });

// // API ValideDemandeWorkFlow
// app.post('/api/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
//   const { token, CodeDemande, Observation, IsAprouver } = req.body;
  
//   try {
//     const demandeAchat = await DemandeAchat.findOne({ NumeroDA: CodeDemande });
//     if (!demandeAchat) {
//       return res.status(404).send({ success: false, message: "Demande d'achat non trouvée." });
//     }

//     demandeAchat.Status = IsAprouver ? 'Approved' : 'Rejected';
//     demandeAchat.Observation = Observation;

//     await demandeAchat.save();

//     res.send({ success: true, message: "Demande mise à jour avec succès." });
//   } catch (error) {
//     res.status(500).send({ success: false, message: error.message });
//   }
// });

// app.get('/api/DetailsBonCommande', verifyToken, async (req, res) => {
//   const { token, IdBc } = req.query;
  
//   try {
//     const bonCommande = await BonCommande.findById(IdBc).populate('Fournisseur Articles.Article');
//     if (!bonCommande) {
//       return res.status(404).send({ success: false, message: "Bon de commande non trouvé." });
//     }

//     res.send({
//       success: true,
//       NumeroBC: bonCommande.NumeroBC,
//       Date: bonCommande.Date_Sys?.toISOString().split('T')[0],
//       Fournisseur: bonCommande.Fournisseur?.Nom,
//       Articles: bonCommande.Articles.map(x => ({
//         Reference: x.Article.Reference,
//         libelle: x.Article.libelle,
//         Qte: x.Qte,
//         Prix: x.Prix
//       }))
//     });
//   } catch (error) {
//     res.status(500).send({ success: false, message: error.message });
//   }
// });

// // API DetailsDemandeAchat
// app.get('/api/DetailsDemandeAchat', verifyToken, async (req, res) => {
//   const { token, idDa } = req.query;
//   const demandeAchat = await DemandeAchat.findById(idDa).populate('Utilisateur Utilisateur1 Projet R_DemandeAchat_Article.Article');
//   res.send({
//     NumeroDA: demandeAchat.NumeroDA,
//     Date: demandeAchat.Date_Sys?.toISOString().split('T')[0],
//     Dest: demandeAchat.Utilisateur?.Nom_Complet,
//     Demande: demandeAchat.Utilisateur1?.Nom_Complet,
//     SDest: demandeAchat.Utilisateur?.Service.Libelle,
//     SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
//     Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
//     Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
//       Reference: x.Article.Reference,
//       libelle: x.Article.libelle,
//       Qte: x.Qte,
//       DatePrevLivraison: x.DatePrevLivraison?.toISOString().split('T')[0]
//     }))
//   });
// });

// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//   console.log(`Server is running on port ${PORT}`);
// });
// const express = require('express');
// const bodyParser = require('body-parser');
// const mongoose = require('mongoose');
// const cors = require('cors'); // Ajoutez cette ligne
// const bcrypt = require('bcryptjs');
// const jwt = require('jsonwebtoken');
// const { check, validationResult } = require('express-validator');
// const db = require('./db');
// const app = express();

// app.use(cors());

// app.use(bodyParser.json());
// app.use(cors()); // Ajoutez cette ligne

// const JWT_SECRET = 'your_jwt_secret'; // Remplacez par votre propre clé secrète

// // Modèles Mongoose (exemples)
// const User = mongoose.model('User', new mongoose.Schema({
//   Nom_Complet: String,
//   Email: { type: String, required: true, unique: true },
//   Password: { type: String, required: true },
//   Service: {
//     Libelle: String
//   }
// }));

// const Project = mongoose.model('Project', new mongoose.Schema({
//   Libelle: String
// }));

// const Article = mongoose.model('Article', new mongoose.Schema({
//   Reference: String,
//   libelle: String
// }));

// const BonCommande = mongoose.model('BonCommande', new mongoose.Schema({
//   NumeroBC: String,
//   Date_Sys: Date,
//   Fournisseur: { type: mongoose.Schema.Types.ObjectId, ref: 'Fournisseur' },
//   Articles: [{
//     Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
//     Qte: Number,
//     Prix: Number
//   }]
// }));

// const DemandeAchat = mongoose.model('DemandeAchat', new mongoose.Schema({
//   NumeroDA: String,
//   Date_Sys: Date,
//   Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
//   Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
//   Projet: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Project' }],
//   R_DemandeAchat_Article: [{
//     Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
//     Qte: Number,
//     DatePrevLivraison: Date
//   }],
//   Status: { type: String, enum: ['Pending', 'Approved', 'Rejected'], default: 'Pending' },
//   Observation: String
// }));
// app.use((req, res, next) => {
//     res.setTimeout(7200000, () => { // 2 hours
//       console.log('Request has timed out.');
//       res.send(408);
//     });
//     next();
//   });
// // Middleware de vérification du token
// // const verifyToken = (req, res, next) => {
// //   const token = req.header('Authorization').replace('Bearer ', '');
// //   if (!token) return res.status(401).send({ success: false, message: 'Access Denied' });

// //   try {
// //     const verified = jwt.verify(token, JWT_SECRET);
// //     req.user = verified;
// //     next();
// //   } catch (error) {
// //     res.status(400).send({ success: false, message: 'Invalid Token' });
// //   }
// // };
// app.get('/DetailsDemandeAchat', verifyToken, async (req, res) => {
//   try {
//     const idDa = req.query.idDa;
//     if (!idDa) {
//       return res.status(400).json({ message: 'ID de demande d\'achat manquant' });
//     }
//     const demandeAchat = await DemandeAchat.findById(idDa);
//     if (!demandeAchat) {
//       return res.status(404).json({ message: 'Demande d\'achat non trouvée' });
//     }
//     res.json(demandeAchat);
//   } catch (error) {
//     res.status(500).json({ message: 'Erreur serveur', error });
//   }
// });

// const axios = require('axios');

// const baseUrl = 'http://localhost:3000/api'; // Replace with your actual base URL
// const timeoutDuration = 500000; // Timeout duration in milliseconds

// async function login(email, password) {
//   try {
//     const response = await axios.post(
//       `${baseUrl}/login`,
//       {
//         Email: email,
//         Password: password,
//       },
//       {
//         headers: { 'Content-Type': 'application/json' },
//         timeout: timeoutDuration,
//       }
//     );

//     if (response.status === 200) {
//       const data = response.data;
//       // Here you can save the token to a file or database
//       return data;
//     } else {
//       return { error: `Failed to login: ${response.statusText}` };
//     }
//   } catch (error) {
//     if (error.code === 'ECONNABORTED') {
//       return { error: 'Request timed out' };
//     }
//     return { error: `An unknown error occurred: ${error.message}` };
//   }
// }

// async function fetchStatistics(token) {
//   try {
//     const response = await axios.get(
//       `${baseUrl}/fetchStatistics`,
//       {
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': `Bearer ${token}`,
//         },
//         timeout: timeoutDuration,
//       }
//     );

//     if (response.status === 200) {
//       return response.data;
//     } else {
//       return { error: `Failed to fetch statistics: ${response.statusText}` };
//     }
//   } catch (error) {
//     if (error.code === 'ECONNABORTED') {
//       return { error: 'Request timed out' };
//     }
//     return { error: `An unknown error occurred: ${error.message}` };
//   }
// }

// async function fetchDetailsList(token) {
//   try {
//     const response = await axios.get(
//       `${baseUrl}/fetchDetailsList`,
//       {
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': `Bearer ${token}`,
//         },
//         timeout: timeoutDuration,
//       }
//     );

//     if (response.status === 200) {
//       return response.data;
//     } else {
//       return [{ error: `Failed to fetch details list: ${response.statusText}` }];
//     }
//   } catch (error) {
//     if (error.code === 'ECONNABORTED') {
//       return [{ error: 'Request timed out' }];
//     }
//     return [{ error: `An unknown error occurred: ${error.message}` }];
//   }
// }

// module.exports = { login, fetchStatistics, fetchDetailsList };
// const demandesAchat = {
//   "1": {
//       NumeroDA: "DA001",
//       Date_Sys: new Date(),
//       Utilisateur: { Nom_Complet: "John Doe", Service: { Libelle: "Service A" } },
//       Utilisateur1: { Nom_Complet: "Jane Smith", Service: { Libelle: "Service B" } },
//       Projet: [{ Libelle: "Projet X" }, { Libelle: "Projet Y" }],
//       R_DemandeAchat_Article: [
//           { Article: { Reference: "A001", libelle: "Article 1" }, Qte: 10, DatePrevLivraison: new Date() },
//           { Article: { Reference: "A002", libelle: "Article 2" }, Qte: 20, DatePrevLivraison: null }
//       ],
//       Demande_WorkFlow: [{ Configuration_Workflow_D: [{ Cle_User: "1", GetStatutCodeApi: () => "Code1" }] }]
//   }
// };

// // Endpoint to fetch demande achat details
// app.get('/api/DetailsDemandeAchat', (req, res) => {
//   const token = req.query.token;
//   const idDa = req.query.idDa;

//   // In a real application, you would validate the token and fetch data from a database
//   if (!token || !idDa) {
//       return res.status(400).json({ error: "Missing token or idDa" });
//   }

//   const demandeAchat = demandesAchat[idDa];

//   if (!demandeAchat) {
//       return res.status(404).json({ error: "Demande Achat not found" });
//   }

//   const utilisateur = { Cle: "1" }; // Dummy user data for simulation

//   const response = {
//       NumeroDA: demandeAchat.NumeroDA,
//       Date: demandeAchat.Date_Sys.toISOString().split('T')[0], // Format date to YYYY-MM-DD
//       Dest: demandeAchat.Utilisateur?.Nom_Complet,
//       Demande: demandeAchat.Utilisateur1?.Nom_Complet,
//       SDest: demandeAchat.Utilisateur?.Service.Libelle,
//       SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
//       Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
//       Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
//           Reference: x.Article.Reference,
//           libelle: x.Article.libelle,
//           Qte: x.Qte,
//           DatePrevLivraison: x.DatePrevLivraison ? x.DatePrevLivraison.toISOString().split('T')[0] : null
//       })),
//       CodeStatut: demandeAchat.Demande_WorkFlow[0].Configuration_Workflow_D[0].GetStatutCodeApi(utilisateur)
//   };

//   res.json(response);
// });
// // app.get('/api/fetchStatistics', (req, res) => {
// //     res.json({ data: 'Statistics data' });
// //   });
  
// //   app.get('/api/fetchDetailsList', (req, res) => {
// //     res.json({ data: 'Details list data' });
// //   });
// // Route d'inscription
// app.post('/api/register', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Please enter a password with 6 or more characters').isLength({ min: 6 })
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Nom_Complet, Email, Password, Service } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (user) {
//       return res.status(400).json({ message: 'User already exists' });
//     }

//     user = new User({
//       Nom_Complet,
//       Email,
//       Password,
//       Service
//     });

//     const salt = await bcrypt.genSalt(10);
//     user.Password = await bcrypt.hash(Password, salt);

//     await user.save();

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, (err, token) => {
//       if (err) throw err;
//       res.json({ token });
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });

// // Route de connexion
// app.post('/api/login', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Password is required').exists()
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Email, Password } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (!user) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const isMatch = await bcrypt.compare(Password, user.Password);
//     if (!isMatch) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, (err, token) => {
//       if (err) throw err;
//       res.json({ token });
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });

// // API ValideDemandeWorkFlow
// app.post('/api/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
//   const { token, CodeDemande, Observation, IsAprouver } = req.body;
  
//   try {
//     const demandeAchat = await DemandeAchat.findOne({ NumeroDA: CodeDemande });
//     if (!demandeAchat) {
//       return res.status(404).send({ success: false, message: "Demande d'achat non trouvée." });
//     }

//     demandeAchat.Status = IsAprouver ? 'Approved' : 'Rejected';
//     demandeAchat.Observation = Observation;

//     await demandeAchat.save();

//     res.send({ success: true, message: "Demande mise à jour avec succès." });
//   } catch (error) {
//     res.status(500).send({ success: false, message: error.message });
//   }
// });

// // app.get('/api/DetailsBonCommande', verifyToken, async (req, res) => {
// //   const { token, IdBc } = req.query;
  
// //   try {
// //     const bonCommande = await BonCommande.findById(IdBc).populate('Fournisseur Articles.Article');
// //     if (!bonCommande) {
// //       return res.status(404).send({ success: false, message: "Bon de commande non trouvé." });
// //     }

// //     res.send({
// //       success: true,
// //       NumeroBC: bonCommande.NumeroBC,
// //       Date: bonCommande.Date_Sys?.toISOString().split('T')[0],
// //       Fournisseur: bonCommande.Fournisseur?.Nom,
// //       Articles: bonCommande.Articles.map(x => ({
// //         Reference: x.Article.Reference,
// //         libelle: x.Article.libelle,
// //         Qte: x.Qte,
// //         Prix: x.Prix
// //       }))
// //     });
// //   } catch (error) {
// //     res.status(500).send({ success: false, message: error.message });
// //   }
// // });

// // API DetailsDemandeAchat
// // app.get('/api/DetailsDemandeAchat', verifyToken, async (req, res) => {
// //   const { token, idDa } = req.query;
// //   const demandeAchat = await DemandeAchat.findById(idDa).populate('Utilisateur Utilisateur1 Projet R_DemandeAchat_Article.Article');
// //   res.send({
// //     NumeroDA: demandeAchat.NumeroDA,
// //     Date: demandeAchat.Date_Sys?.toISOString().split('T')[0],
// //     Dest: demandeAchat.Utilisateur?.Nom_Complet,
// //     Demande: demandeAchat.Utilisateur1?.Nom_Complet,
// //     SDest: demandeAchat.Utilisateur?.Service.Libelle,
// //     SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
// //     Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
// //     Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
// //       Reference: x.Article.Reference,
// //       libelle: x.Article.libelle,
// //       Qte: x.Qte,
// //       DatePrevLivraison: x.DatePrevLivraison?.toISOString().split('T')[0]
// //     }))
// //   });
// // });
// function verifyToken(req, res, next) {
//   const token = req.query.token;
//   // Effectuez ici la vérification du token (vérification de sa validité, etc.)
//   if (!token) {
//     return res.status(401).json({ error: "Token missing" });
//   }

//   // Simuler une validation de token
//   if (token === 'valid_token') {
//     next(); // Token valide, passer au middleware suivant
//   } else {
//     res.status(403).json({ error: "Invalid token" });
//   }
// }

// app.use(verifyToken);

// app.get('/api/DetailsDemandeAchat', (req, res) => {
//   const idDa = req.query.idDa;

//   if (!idDa) {
//     return res.status(400).json({ error: "Missing idDa" });
//   }

//   const demandeAchat = demandesAchat[idDa];

//   if (!demandeAchat) {
//     return res.status(404).json({ error: "Demande Achat not found" });
//   }

//   const utilisateur = { Cle: "1" }; // Données utilisateur fictives pour simulation

//   const response = {
//     NumeroDA: demandeAchat.NumeroDA,
//     Date: demandeAchat.Date_Sys.toISOString().split('T')[0],
//     Dest: demandeAchat.Utilisateur?.Nom_Complet,
//     Demande: demandeAchat.Utilisateur1?.Nom_Complet,
//     SDest: demandeAchat.Utilisateur?.Service.Libelle,
//     SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
//     Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
//     Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
//       Reference: x.Article.Reference,
//       libelle: x.Article.libelle,
//       Qte: x.Qte,
//       DatePrevLivraison: x.DatePrevLivraison ? x.DatePrevLivraison.toISOString().split('T')[0] : null
//     })),
//     CodeStatut: demandeAchat.Demande_WorkFlow[0].Configuration_Workflow_D[0].GetStatutCodeApi(utilisateur)
//   };

//   res.json(response);
// });
// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//   console.log(`Server is running on port ${PORT}`);
// });
const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const { check, validationResult } = require('express-validator');
const { verifyToken } = require('./middleware/verifyToken');
const demandeAchatRoutes = require('./middleware/demandeAchatRoutes');
const { getDetailsDemandeAchat } = require('./controllers/demandeAchatController');
const demandeRoutes = require('./routes/demandeRoutes');
const agendaRoutes = require('./routes/agendaRoutes');
const workflowRoutes = require('./routes/workflowRoutes');
// const logoutRoute = require('./routes/logout');
const axios = require('axios');

const app = express();
JWT_SECRET='3d45e83da9183086c5c94c5329474bf8f41a6c2e68c994aea3b6816d61ed2ac9', // Remplacez par votre propre clé secrète

// Middlewares
app.use(cors());
app.use(bodyParser.json());


// db.js
mongoose.connect('mongodb://localhost:27017/gecimo');
const db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function() {
  console.log("Connected to the database");
});
app.use('/api', workflowRoutes);
app.use('/api', demandeRoutes);
app.use('/api', demandeAchatRoutes);
app.use('/api/agenda', agendaRoutes);
app.use('/api/agenda/validate-task', agendaRoutes);
app.use('/api/agenda/delete-task', agendaRoutes);
// app.use('/api', logoutRoute);
app.get('/DetailsDemandeAchat', getDetailsDemandeAchat);
const token = jwt.sign({ userId: '66a229b2d046e7dec0141e22' }, '3d45e83da9183086c5c94c5329474bf8f41a6c2e68c994aea3b6816d61ed2ac9', { expiresIn: '1h' });
console.log(token);
// Modèles Mongoose (exemples)
// const demandeAchat = mongoose.model('demandeAchat',new mongoose.Schema({ // Utilisation d'un identifiant personnalisé de type String
//   NumeroDA: { type: String },
//   Date_Sys: { type: Date },
//   Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'Utilisateur' },
//   Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'Utilisateur' },
//   Projet: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Projet' }],
//   R_DemandeAchat_Article: [{
//       Article: { type: mongoose.Schema.Types.ObjectId, ref: 'Article' },
//       Qte: { type: Number },
//       DatePrevLivraison: { type: Date }
//   }],
//   Demande_WorkFlow: [{
//       Configuration_Workflow_D: [{
//           Cle_User: { type: String }
//           // Vous pouvez ajouter d'autres champs ici si nécessaire
//       }]
//   }]
// }));
const DemandeAchat = require('./models/DemandeAchat');


const User = mongoose.model('User', new mongoose.Schema({
  Nom_Complet: String,
  Email: { type: String, required: true, unique: true },
  Password: { type: String, required: true },
  Service: {
    Libelle: String
  }
}));
const Login = mongoose.model('Login', new mongoose.Schema({
  username: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  token: { type: String, required: true },
  roles: [String],
  lastLogin: { type: Date, default: Date.now } // Manually set last login time
}, { timestamps: true })
);
app.get('/api/DetailsDemandeAchat', async (req, res) => {
  const token = req.query.token;
  const idDa = req.query.idDa;

  try {
    const decoded = jwt.verify(token, 'your_jwt_secret');
    const utilisateur = await User.findById(decoded.userId);

    const demandeAchat = await DemandeAchat.findById(idDa)
      .populate('Utilisateur')
      .populate('Utilisateur1')
      .exec();

    const details = {
      NumeroDA: demandeAchat.NumeroDA,
      Date: demandeAchat.Date_Sys?.toLocaleDateString(),
      Dest: demandeAchat.Utilisateur?.Nom_Complet,
      Demande: demandeAchat.Utilisateur1?.Nom_Complet,
      SDest: demandeAchat.Utilisateur?.Service.Libelle,
      SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
      Projet: demandeAchat.Projet.map(p => p.Libelle).join(', '),
      Articles: demandeAchat.R_DemandeAchat_Article.map(article => ({
        Reference: article.Article.Reference,
        libelle: article.Article.libelle,
        Qte: article.Qte,
        DatePrevLivraison: article.DatePrevLivraison?.toLocaleDateString(),
      })),
      CodeStatut: demandeAchat.Demande_WorkFlow?.[0]?.Configuration_Workflow_D?.[0]?.Cle_User === utilisateur.Cle
        ? 'Statut_Code'
        : 'Unknown',
    };

    res.json(details);
  } catch (err) {
    res.status(401).json({ error: 'Invalid token' });
  }
});

// DELETE /chantiers/:id - Delete a chantier by ID
app.delete('/chantiers/:id', async (req, res) => {
  try {
    const chantier = await Chantier.findByIdAndDelete(req.params.id);
    if (!chantier) {
      return res.status(404).json({ error: 'Chantier not found' });
    }
    res.json({ message: 'Chantier deleted successfully' });
  } catch (err) {
    res.status(500).json({ error: 'Failed to delete chantier' });
  }
});

// routes/workflowRoutes.js
const router = express.Router();
// POST /api/ValideDemandeWorkFlow
router.post('/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
  const { CodeDemande, Observation, IsAprouver } = req.query;

  try {
    const workflow = await workflow.findOne({ codeDemande: CodeDemande });
    if (!workflow) {
      return res.status(404).json({ message: 'Workflow not found' });
    }

    workflow.observation = Observation;
    workflow.isApproved = IsAprouver === 'true';

    await workflow.save();

    return res.status(200).json({ message: 'Workflow updated successfully', workflow });
  } catch (error) {
    return res.status(500).json({ message: 'Server error', error });
  }
});

module.exports = router;

// models/Workflow.js

const WorkflowSchema = new mongoose.Schema({
  codeDemande: { type: String, required: true, unique: true },
  amount: { type: Number, required: true },
  validator: { type: String, required: true },
  date: { type: Date, default: Date.now },
  observation: { type: String },
  isApproved: { type: Boolean, default: false }
});

module.exports = mongoose.model('Workflow', WorkflowSchema);

// const chantierSchema = new mongoose.Schema({
//   libelle: String,
//   description: String,
//   dateDebut: Date,
//   dateFinPrev: Date,
//   chefChantier: String,
// });

// const Chantier = mongoose.model('Chantier', chantierSchema);

// // API endpoint to add a new chantier
// app.post('/api/chantiers', async (req, res) => {
//   const { libelle, description, dateDebut, dateFinPrev, chefChantier } = req.body;
  
//   try {
//     const newChantier = new Chantier({
//       libelle,
//       description,
//       dateDebut,
//       dateFinPrev,
//       chefChantier,
//     });
    
//     await newChantier.save();
//     res.status(201).json(newChantier);
//   } catch (err) {
//     res.status(500).json({ error: 'Failed to add chantier' });
//   }
// });

// // API endpoint to get all chantiers
// app.get('/api/chantiers', async (req, res) => {
//   try {
//     const chantiers = await Chantier.find();
//     res.status(200).json(chantiers);
//   } catch (err) {
//     res.status(500).json({ error: 'Failed to fetch chantiers' });
//   }
// });
const chantierSchema = new mongoose.Schema({
  libelle: { type: String, required: true,unique:true },
  description: { type: String, required: true },
  dateDebut: { type: String, required: true },
  dateFinPrev: { type: String, required: true },
  chefChantier: { type: String, required: true },
});

const Chantier = mongoose.model('Chantier', chantierSchema);

app.get('/chantiers', async (req, res) => {
  try {
    const chantier = await Chantier.find({});
    res.json(chantier);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch chantiers' });
  }
});
// POST route to save Chantier
app.post('/addChantier', async (req, res) => {
  const { libelle, description, dateDebut, dateFinPrev, chefChantier } = req.body;

  const newChantier = new Chantier({
    libelle,
    description,
    dateDebut,
    dateFinPrev,
    chefChantier,
  });

  try {
    await newChantier.save();
    res.status(201).json({ message: 'Chantier added successfully' });
    console.log(res)
  } catch (error) {
    res.status(500).json({ message: 'Error saving chantier', error });
  }
});
// const DemandeAchat = mongoose.model('DemandeAchat', new mongoose.Schema({
//   // Définir les champs ici
//   NumeroDA: String,
//   Date_Sys: Date,
//   Utilisateur: { type: mongoose.Schema.Types.ObjectId, ref: 'Utilisateur' },
//   Utilisateur1: { type: mongoose.Schema.Types.ObjectId, ref: 'Utilisateur' },
//   Projet: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Projet' }],
//   R_DemandeAchat_Article: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Article' }],
//   Demande_WorkFlow: [{
//       Configuration_Workflow_D: [{
//           Cle_User: String,
//           // GetStatutCodeApi: (utilisateur) => 'StatutCode' // Exemple de fonction
//       }]
//   }]
// }));

// const verifyToken = (req, res, next) => {
//   const token = req.query.token || req.headers['authorization'];

//   if (!token) {
//       return res.status(403).json({ message: 'Aucun token fourni' });
//   }

//   // Supprimer le préfixe 'Bearer ' si présent
//   const tokenWithoutBearer = token.startsWith('Bearer ') ? token.slice(7, token.length) : token;

//   jwt.verify(tokenWithoutBearer, process.env.JWT_SECRET, (err, decoded) => {
//       if (err) {
//           console.error('Erreur lors de la vérification du token:', err);
//           return res.status(403).json({ message: 'Token invalide' });
//       }
//       req.user = decoded; // Supposer que les informations de l'utilisateur sont dans le payload du token
//       next();
//   });
// };
// app.get('/DetailsDemandeAchat', async (req, res) => {
//   try {
//       const { idDa } = req.query;
//       const demandeAchat = await demandeAchat.findOne( idDa=NumeroDA ).exec();
//       if (!demandeAchat) {
//           return res.status(404).json({ message: 'Detail Demande not found' });
//       }
//       res.json(demandeAchat);
//   } catch (error) {
//     return error.message;
//   }
// });
 // Adjust path as needed

app.use('/api', demandeAchatRoutes);

// app.use((req, res, next) => {
//   const token = req.headers['authorization']?.split(' ')[1];
//   if (!token) return res.status(403).json({ message: 'No token provided' });
//   jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
//       if (err) return res.status(500).json({ message: 'Failed to authenticate token' });
//       req.userId = decoded.userId;
//       next();
//   });
// });

const getStatutCodeApi = (demandeAchat, utilisateur) => {
  const workflow = demandeAchat.Demande_WorkFlow?.[0]?.Configuration_Workflow_D;
  if (workflow) {
      const userWorkflow = workflow.find(x => x.Cle_User === utilisateur.Cle);
      if (userWorkflow) {
          // Implémentez la logique pour obtenir le code de statut API
          // Exemple: retourner un champ spécifique de userWorkflow
          return userWorkflow.StatutCode || 'Statut par défaut';
      }
  }
  return 'Statut non trouvé';
};
// const verifyToken = (req, res, next) => {
//   const token = req.query.token || req.headers['authorization'];

//   if (!token) {
//       return res.status(403).json({ message: 'Aucun token fourni' });
//   }

//   jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
//       if (err) {
//           return res.status(403).json({ message: 'Token invalide' });
//       }
//       req.user = decoded; // Supposer que les informations de l'utilisateur sont dans le payload du token
//       next();
//   });
// };
// Middleware de vérification du token
// function verifyToken(req, res, next) {
//   const token = req.header('Authorization')?.replace('Bearer ', '');
//   if (!token) return res.status(401).send({ success: false, message: 'Access Denied' });

//   try {
//     const verified = jwt.verify(token, JWT_SECRET);
//     req.user = verified;
//     next();
//   } catch (error) {
//     res.status(400).send({ success: false, message: 'Invalid Token' });
//   }
// }

// Timeout Middleware
app.use((req, res, next) => {
  res.setTimeout(7200000, () => { // 2 hours
    console.log('Request has timed out.');
    res.sendStatus(408);
  });
  next();
});
// Route to create a new purchase request
app.post('/api/createDemandeAchat', verifyToken, [
  check('NumeroDA', 'Number is required').notEmpty(),
  check('Date_Sys', 'Date is required').isISO8601(),
  check('Utilisateur', 'User ID is required').isMongoId(),
  check('Utilisateur1', 'Second User ID is required').isMongoId(),
  check('Projet', 'Project IDs are required').isArray(),
  check('R_DemandeAchat_Article', 'Articles are required').isArray(),
], async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { NumeroDA, Date_Sys, Utilisateur, Utilisateur1, Projet, R_DemandeAchat_Article, Status, Observation } = req.body;

  try {
    // Create a new purchase request
    const newDemandeAchat = new DemandeAchat({
      NumeroDA,
      Date_Sys,
      Utilisateur,
      Utilisateur1,
      Projet,
      R_DemandeAchat_Article,
      Status: Status || 'Pending', // Default to 'Pending' if not provided
      Observation
    });

    // Save the new request to the database
    await newDemandeAchat.save();

    res.status(201).json({ success: true, message: 'Purchase request created successfully', data: newDemandeAchat });
  } catch (error) {
    res.status(500).send({ success: false, message: error.message });
  }
});

// Route d'inscription
app.post('/api/register', [
  check('Email', 'Please include a valid email').isEmail(),
  check('Password', 'Please enter a password with 6 or more characters').isLength({ min: 6 })
], async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { Nom_Complet, Email, Password, Service } = req.body;

  try {
    let user = await User.findOne({ Email });
    if (user) {
      return res.status(400).json({ message: 'User already exists' });
    }

    user = new User({
      Nom_Complet,
      Email,
      Password,
      Service
    });

    const salt = await bcrypt.genSalt(10);
    user.Password = await bcrypt.hash(Password, salt);

    await user.save();

    const payload = {
      user: {
        id: user.id
      }
    };

    jwt.sign(payload, JWT_SECRET, { expiresIn: 50000000 }, (err, token) => {
      if (err) throw err;
      res.json({ token });
    });

  } catch (error) {
    res.status(500).send('Server error');
  }
});

// // Route de connexion
// app.post('/api/login', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Password is required').exists()
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Email, Password } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (!user) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const isMatch = await bcrypt.compare(Password, user.Password);
//     if (!isMatch) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, (err, token) => {
//       if (err) throw err;
//       res.json({ token });
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });
// Route de connexion
// app.post('/api/login', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Password is required').exists()
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Email, Password } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (!user) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const isMatch = await bcrypt.compare(Password, user.Password);
//     if (!isMatch) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     // Generate JWT Token
//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, async (err, token) => {
//       if (err) throw err;

//       // Save login details to the `login` collection
//       try {
//         await new Login({
//           username: user.Email, // You may use Email as username here
//           password: Password, // Storing the raw password is not recommended; consider storing hash or omitting this field
//           token,
//           roles: ['user'] // Set appropriate roles
//         }).save();

//         res.json({ token });
//       } catch (error) {
//         res.status(500).send('Server error');
//       }
//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });

// // Route to create a new BonCommande
// app.post('/api/createBonCommande', verifyToken, [
//   check('NumeroBC', 'Number is required').notEmpty(),
//   check('Date_Sys', 'Date is required').isISO8601(),
//   check('Fournisseur', 'Fournisseur ID is required').isMongoId(),
//   check('Articles', 'Articles are required').isArray(),
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { NumeroBC, Date_Sys, Fournisseur, Articles } = req.body;

//   try {
//     // Create a new BonCommande
//     const newBonCommande = new BonCommande({
//       NumeroBC,
//       Date_Sys,
//       Fournisseur,
//       Articles
//     });

//     // Save the new BonCommande to the database
//     await newBonCommande.save();

//     res.status(201).json({ success: true, message: 'BonCommande created successfully', data: newBonCommande });
//   } catch (error) {
//     res.status(500).send({ success: false, message: error.message });
//   }
// });
// app.post('/api/login', [
//   check('Email', 'Please include a valid email').isEmail(),
//   check('Password', 'Password is required').exists()
// ], async (req, res) => {
//   const errors = validationResult(req);
//   if (!errors.isEmpty()) {
//     return res.status(400).json({ errors: errors.array() });
//   }

//   const { Email, Password } = req.body;

//   try {
//     let user = await User.findOne({ Email });
//     if (!user) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const isMatch = await bcrypt.compare(Password, user.Password);
//     if (!isMatch) {
//       return res.status(400).json({ message: 'Invalid Credentials' });
//     }

//     const payload = {
//       user: {
//         id: user.id
//       }
//     };

//     // Generate JWT Token
//     jwt.sign(payload, JWT_SECRET, { expiresIn: 3600 }, async (err, token) => {
//       if (err) throw err;

//       try {
//         // Check if login details already exist
//         let loginDetails = await Login.findOne({ username: user.Email });
//         if (loginDetails) {
//           // Update the existing login details with the new token
//           loginDetails.token = token;
//           loginDetails.lastLogin = new Date();
//           await loginDetails.save();
//         } else {
//           // Save new login details
//           await new Login({
//             username: user.Email,
//             password: Password, // Storing the raw password is not recommended; consider storing hash or omitting this field
//             token,
//             roles: ['user'], // Set appropriate roles
//             lastLogin: new Date()
//           }).save();
//         }

//         res.json({ token });
//         const token = generateToken(Email); // Implement generateToken function
//       // Store the token in memory
//       tokenStore[Email] = token;

//       res.json({ token });
//       } catch (error) {
//         res.status(500).send('Server error');
//       }

//     });

//   } catch (error) {
//     res.status(500).send('Server error');
//   }
// });
app.post('/login', async (req, res) => {
  const { username, password } = req.body;
  const token = generateToken(username);
  
});
app.post('/api/login', [
  check('Email', 'Please include a valid email').isEmail(),
  check('Password', 'Password is required').exists()
], async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { Email, Password } = req.body;

  try {
    // Check if user exists
    const user = await User.findOne({ Email });
    if (!user) {
      return res.status(400).json({ message: 'Invalid Credentials' });
    }

    // Compare passwords
    const isMatch = await bcrypt.compare(Password, user.Password);
    if (!isMatch) {
      return res.status(400).json({ message: 'Invalid Credentials' });
    }

    // Create JWT payload
    const payload = {
      user: {
        id: user.id
      }
    };

    // Generate JWT Token
    jwt.sign(payload, JWT_SECRET, { expiresIn: '1h' }, async (err, token) => {
      if (err) {
        return res.status(500).json({ message: 'Server error' });
      }

      try {
        // Check if login details already exist
        let loginDetails = await Login.findOne({ username: Email });
        if (loginDetails) {
          // Update the existing login details with the new token
          loginDetails.token = token;
          loginDetails.lastLogin = new Date();
          await loginDetails.save();
        } else {
          // Save new login details
          await new Login({
            username: Email,
            token,
            roles: ['user'], // Set appropriate roles
            lastLogin: new Date()
          }).save();
        }

        // Respond with the token
        res.json({ token });
      } catch (error) {
        res.status(500).json({ message: 'Server error' });
      }
    });
  } catch (error) {
    res.status(500).json({ message: 'Server error' });
  }
});



// Example API endpoint protected by token
app.get('/protected', verifyToken, (req, res) => {
  res.json({ message: `Hello ${req.user.id}` });
});
// Generate token function (example)
function generateToken(email) {
  const payload = { email };
  return jwt.sign(payload, JWT_SECRET, { expiresIn: '1h' });
}
// API ValideDemandeWorkFlow
app.post('/api/ValideDemandeWorkFlow', verifyToken, async (req, res) => {
  const { CodeDemande, Observation, IsAprouver } = req.body;
  try {
    const demandeAchat = await DemandeAchat.findOne({ NumeroDA: CodeDemande });
    if (!demandeAchat) {
      return res.status(404).send({ success: false, message: "Demande d'achat non trouvée." });
    }
    demandeAchat.Status = IsAprouver ? 'Approved' : 'Rejected';
    demandeAchat.Observation = Observation;
    await demandeAchat.save();
    res.send({ success: true, message: "Demande mise à jour avec succès." });
  } catch (error) {
    res.status(500).send({ success: false, message: error.message });
  }
});

// API DetailsDemandeAchat
// app.get('/api/DetailsDemandeAchat', async (req, res) => {
//   const { NumeroDA } = req.query;
//   if (!NumeroDA) {
//     return res.status(400).json({ error: "Missing idDa" });
//   }
//   // if (!mongoose.Types.ObjectId.isValid(idDa)) {
//   //   return res.status(400).json({ error: "Invalid idDa format" });
//   // }
//   try {
//     const demandeAchat = await DemandeAchat.findById(NumeroDA)
      
//     if (!demandeAchat) {
//       return res.status(404).json({ error: "Demande Achat not found" });
//     }
//     res.json({
//       NumeroDA: demandeAchat.NumeroDA,
//       Date: demandeAchat.Date_Sys?.toISOString().split('T')[0],
//       Dest: demandeAchat.Utilisateur?.Nom_Complet,
//       Demande: demandeAchat.Utilisateur1?.Nom_Complet,
//       SDest: demandeAchat.Utilisateur?.Service.Libelle,
//       SDemande: demandeAchat.Utilisateur1?.Service.Libelle,
//       Projet: demandeAchat.Projet.map(x => x.Libelle).join(','),
//       Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
//         Reference: x.Article.Reference,
//         libelle: x.Article.libelle,
//         Qte: x.Qte,
//         DatePrevLivraison: x.DatePrevLivraison?.toISOString().split('T')[0]
//       }))
//     });
//   } catch (error) {
//     res.status(500).json({ message: 'Server error', error });
//   }
// });

// app.get('/api/DetailsDemandeAchat', verifyToken, async (req, res) => {
//   try {
//       const { idDa } = req.query;
//       const utilisateur = req.user; // Supposer que les informations de l'utilisateur sont ajoutées à req après la vérification du token

//       if (!idDa) {
//           return res.status(400).json({ message: 'ID de demande d\'achat manquant' });
//       }

//       const demandeAchat = await DemandeAchat.findById(idDa)
//           .populate('Utilisateur')
//           .populate('Utilisateur1')
//           .populate('Projet')
//           .populate({
//               path: 'R_DemandeAchat_Article',
//               populate: {
//                   path: 'Article'
//               }
//           })
//           .exec();

//       if (!demandeAchat) {
//           return res.status(404).json({ message: 'Demande d\'achat non trouvée' });
//       }

//       const response = {
//           NumeroDA: demandeAchat.NumeroDA,
//           Date: demandeAchat.Date_Sys ? demandeAchat.Date_Sys.toISOString().split('T')[0] : null,
//           Dest: demandeAchat.Utilisateur?.Nom_Complet,
//           Demande: demandeAchat.Utilisateur1?.Nom_Complet,
//           SDest: demandeAchat.Utilisateur?.Service?.Libelle,
//           SDemande: demandeAchat.Utilisateur1?.Service?.Libelle,
//           Projet: demandeAchat.Projet.map(p => p.Libelle).join(','),
//           Articles: demandeAchat.R_DemandeAchat_Article.map(x => ({
//               Reference: x.Article.Reference,
//               libelle: x.Article.libelle,
//               Qte: x.Qte,
//               DatePrevLivraison: x.DatePrevLivraison ? x.DatePrevLivraison.toISOString().split('T')[0] : null
//           })),
//           CodeStatut: demandeAchat?.Demande_WorkFlow?.[0]?.Configuration_Workflow_D?.find(x => x.Cle_User === utilisateur.Cle)?.GetStatutCodeApi(utilisateur)
//       };

//       res.json(response);

//   } catch (error) {
//       console.error('Erreur lors de la récupération des détails de la demande d\'achat:', error);
//       res.status(500).json({ message: 'Erreur serveur' });
//   }
// });

// Helper functions for external API calls
const baseUrl = 'http://localhost:3000/api'; // Replace with your actual base URL
const timeoutDuration = 500000; // Timeout duration in milliseconds

async function login(email, password) {
  try {
    const response = await axios.post(
      `${baseUrl}/login`,
      {
        Email: email,
        Password: password,
      },
      {
        headers: { 'Content-Type': 'application/json' },
        timeout: timeoutDuration,
      }
    );

    if (response.status === 200) {
      const data = response.data;
      return data;
    } else {
      return { error: `Failed to login: ${response.statusText}` };
    }
  } catch (error) {
    if (error.code === 'ECONNABORTED') {
      return { error: 'Request timed out' };
    }
    return { error: `An unknown error occurred: ${error.message}` };
  }
}

async function fetchStatistics(token) {
  try {
    const response = await axios.get(
      `${baseUrl}/fetchStatistics`,
      {
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`,
        },
        timeout: timeoutDuration,
      }
    );

    if (response.status === 200) {
      return response.data;
    } else {
      return { error: `Failed to fetch statistics: ${response.statusText}` };
    }
  } catch (error) {
    if (error.code === 'ECONNABORTED') {
      return { error: 'Request timed out' };
    }
    return { error: `An unknown error occurred: ${error.message}` };
  }
}

async function valideDemandeWorkFlow(token, CodeDemande, Observation, IsAprouver) {
  try {
    const response = await axios.post(
      `${baseUrl}/ValideDemandeWorkFlow`,
      {
        CodeDemande,
        Observation,
        IsAprouver,
      },
      {
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`,
        },
        timeout: timeoutDuration,
      }
    );

    if (response.status === 200) {
      return response.data;
    } else {
      return { error: `Failed to validate workflow: ${response.statusText}` };
    }
  } catch (error) {
    if (error.code === 'ECONNABORTED') {
      return { error: 'Request timed out' };
    }
    return { error: `An unknown error occurred: ${error.message}` };
  }
}

// // Route to get details of a specific BonCommande by ID
// app.get('/api/detailsBonCommande', verifyToken, async (req, res) => {
//   const { IdBc } = req.query;

//   if (!IdBc) {
//     return res.status(400).json({ message: 'Missing IdBc parameter' });
//   }

//   try {
//     const bonCommande = await BonCommande.findOne({ NumeroBC: IdBc })
//       .populate('Fournisseur Articles.Article'); // Populate references if needed

//     if (!bonCommande) {
//       return res.status(404).json({ message: 'BonCommande not found' });
//     }

//     res.json(bonCommande);
//   } catch (error) {
//     res.status(500).json({ message: error.message });
//   }
// });

app.post('/api/createBonCommande', verifyToken, [
  check('NumeroBC', 'Number is required').notEmpty(),
  check('Date_Sys', 'Date is required').isISO8601(),
  // check('Fournisseur', 'Fournisseur ID is required').isMongoId(),
  check('Articles', 'Articles are required').isArray(),
], async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { NumeroBC, Date_Sys, Fournisseur, Articles } = req.body;

  try {
    // Create a new BonCommande
    const newBonCommande = new BonCommande({
      NumeroBC,
      Date_Sys,
      Fournisseur,
      Articles
    });

    // Save the new BonCommande to the database
    await newBonCommande.save();

    res.status(201).json({ success: true, message: 'BonCommande created successfully', data: newBonCommande });
  } catch (error) {
    res.status(500).send({ success: false, message: error.message });
  }
});

// API route to get details of a specific BonCommande by ID
app.get('/api/detailsBonCommande', verifyToken, async (req, res) => {
  const { IdBc } = req.query;

  if (!IdBc) {
    return res.status(400).json({ message: 'Missing IdBc parameter' });
  }

  try {
    const bonCommande = await BonCommande.findOne({ NumeroBC: IdBc })
      .populate('Articles.Article'); // Populate references if needed

    if (!bonCommande) {
      return res.status(404).json({ message: 'BonCommande not found' });
    }

    res.json(bonCommande);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
