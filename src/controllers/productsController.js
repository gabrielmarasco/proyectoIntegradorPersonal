let db = require('../database/models');
const Product = db.Product;

const controller = {
  index: (req, res) => {
    res.render('products');
  },
  list: async (req, res) => {
    try {
      let prods = await Product.findAll();
      res.render('products', { prods: prods });
    } catch (e) {
      console.log(e);
    }
  },
  show: async (req, res) => {
    try {
      let prod = await Product.findByPk(req.params.id);
      res.render('showProduct', { prod: prod });
    } catch (e) {
      console.log(e);
    }
  },
  add: (req, res) => {
    res.render('productAdd');
  },
  store: async (req, res) => {
    try {
      let newProd = await Product.create({
        brand: req.body.brand,
        model: req.body.model,
        year: req.body.year,
        category: req.body.category,
        description: req.body.description,
        price: req.body.price,
        imgProduct: req.file
          ? '/images/' + req.file.filename
          : '/images/img-default.jpg',
      });
      res.redirect('/');
    } catch (e) {
      console.log(e);
    }
  },
};

module.exports = controller;
