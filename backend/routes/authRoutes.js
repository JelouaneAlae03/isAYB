const express = require('express');
const router = express.Router();
const User = require('../models/User');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');


const createToken = (userId) => {
  // Vérifie que JWT_SECRET est défini
  if (!process.env.JWT_SECRET) {
    throw new Error('JWT_SECRET is not defined');
  }

  return jwt.sign({ id: userId }, process.env.JWT_SECRET, {
    expiresIn: '1h'
  });
};

// Inscription
router.post('/register', async (req, res) => {
  // Vérification des utilisateurs existants
  const emailExist = await User.findOne({ email: req.body.email });
  if (emailExist) return res.status(400).send('Email already exists');

  // Hachage du mot de passe
  const salt = await bcrypt.genSalt(10);
  const hashedPassword = await bcrypt.hash(req.body.password, salt);

  // Création d'un nouvel utilisateur
  const user = new User({
    nom_complet: req.body.nom_complet,
    email: req.body.email,
    password: hashedPassword,
    // service: req.body.service
  });

  try {
    const savedUser = await user.save();
    res.send({ user: user._id });
  } catch (err) {
    res.status(400).send(err);
  }
});

// Connexion
router.post('/login', async (req, res) => {
  // Vérification de l'utilisateur
  const user = await User.findOne({ email: req.body.email });
  if (!user) return res.status(400).send('Email or password is wrong');

  // Vérification du mot de passe
  const validPass = await bcrypt.compare(req.body.password, user.password);
  if (!validPass) return res.status(400).send('Invalid password');

  // Création et attribution d'un token
  const token = jwt.sign({ _id: user._id }, process.env.TOKEN_SECRET);
  res.header('token', token).send(token);
});

module.exports = router;
