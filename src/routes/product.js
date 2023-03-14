const express = require('express');
const router = express.Router();
const productController = require('../controllers/productsController');
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, '../../public/images'));
  },
  filename: function (req, file, cb) {
    cb(
      null,
      file.fieldname + '-' + Date.now() + path.extname(file.originalname)
    );
  },
});

const upload = multer({ storage: storage });

/* GET products listing. */

router.get('/products', productController.list);
router.get('/products/show/:id', productController.show);
router.get('/products/add', productController.add);
router.post(
  '/products/store',
  upload.single('imgProduct'),
  productController.store
);

module.exports = router;
