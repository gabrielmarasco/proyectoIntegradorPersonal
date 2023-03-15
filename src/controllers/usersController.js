const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require('sequelize');
const bcrypt = require('bcrypt');
const User = db.User;

const { validationResult } = require('express-validator');

const controller = {
  login: (req, res) => {
    res.render('login');
  },
  processLogin: (req, res) => {
    let errors = validationResult(req);
    if (!errors.isEmpty()) {
    }
  },

  list: async (req, res) => {
    try {
      let users = await User.findAll();
      res.render('login', { users: users });
    } catch (e) {
      console.log(e);
    }
  },

  add: (req, res) => {
    res.render('register');
  },

  store: async (req, res) => {
    try {
      let newUser = await User.create({
        name: req.body.name,
        lastName: req.body.lastName,
        email: req.body.email,
        password: req.body.password,
        adress: req.body.adress,
        type: 'user',
        img: req.file
          ? '/images/' + req.file.filename
          : '/images/img-default.jpg',
      });
      res.redirect('/login');
    } catch (e) {
      console.log(e);
    }
  },
  profile: (req, res) => {
    res.render('profile');
  },
};

module.exports = controller;
