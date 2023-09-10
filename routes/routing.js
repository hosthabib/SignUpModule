
// File to define routes
const express = require('express');
const router = express.Router();
const controller = require('../containers/authController');
router.get('/', exports.form = (req, res) =>{res.sendFile('public/form.html', { root: '.' })});
router.post('/', controller.registerUser);
module.exports = router;
