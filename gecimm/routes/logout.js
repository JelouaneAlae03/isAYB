// // const jwt = require('jsonwebtoken');
// // const blacklist = new Set(); // Liste noire simplifiée en mémoire (à remplacer par une base de données en production)

// // // Middleware pour vérifier la présence du token dans la liste noire
// // function checkBlacklist(req, res, next) {
// //   const token = req.headers['authorization']?.split(' ')[1];
// //   if (token && blacklist.has(token)) {
// //     return res.status(401).json({ message: 'Token invalide.' });
// //   }
// //   next();
// // }

// // // Route de déconnexion avec gestion de la liste noire
// // router.post('/logout', (req, res) => {
// //   try {
// //     const token = req.headers['authorization']?.split(' ')[1];
// //     if (token) {
// //       blacklist.add(token); // Ajoutez le token à la liste noire
// //     }
// //     res.status(200).json({ message: 'Déconnexion réussie.' });
// //   } catch (error) {
// //     res.status(500).json({ message: 'Erreur lors de la déconnexion.', error: error.message });
// //   }
// // });
// // module.exports = router
// const jwt = require('jsonwebtoken');
// const blacklist = new Set(); // Liste noire simplifiée en mémoire (à remplacer par une base de données en production)

// // Middleware pour vérifier la présence du token dans la liste noire
// function checkBlacklist(req, res, next) {
//   const token = req.headers['authorization']?.split(' ')[1];
//   if (token && blacklist.has(token)) {
//     return res.status(401).json({ message: 'Token invalide.' });
//   }
//   next();
// }

// // Route de déconnexion avec gestion de la liste noire
// router.post('/logout', (req, res) => {
//   try {
//     const token = req.headers['authorization']?.split(' ')[1];
//     if (token) {
//       blacklist.add(token); // Ajoutez le token à la liste noire
//     }
//     res.status(200).json({ message: 'Déconnexion réussie.' });
//   } catch (error) {
//     res.status(500).json({ message: 'Erreur lors de la déconnexion.', error: error.message });
//   }
// });
// module.exports = router