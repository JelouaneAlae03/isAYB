const express = require('express');
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const authRoutes = require('./routes/authRoutes');
const demandeAchatRoutes = require('./routes/demandeAchatRoutes');
const { handleError } = require('./utils/errorHandler');

dotenv.config();
const app = express();
app.use(express.json());

// Connexion à MongoDB
mongoose.connect(process.env.MONGODB_URI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('MongoDB connected'))
  .catch(err => console.error('MongoDB connection error:', err));

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/demandeAchat', demandeAchatRoutes);

// Middleware pour la gestion des erreurs
app.use((err, req, res, next) => {
  handleError(err, res);
});

// Démarrer le serveur
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
