const express = require('express');
const router = express.Router();
const userController = require('../controllers/usersController');
const multer = require('multer');
const path = require('path');
const loginValidation = require('../middlewares/loginMiddleware');

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

//      ROUTES
router.get('/login', userController.login);
//router.post('/login', loginValidation, userController.processLogin);
router.get('/login/add', userController.add);
router.post('/login/store', upload.single('img'), userController.store);

module.exports = router;
