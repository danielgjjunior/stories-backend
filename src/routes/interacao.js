const express = require('express');
const router = express.Router();
const interacaoController = require('../controllers/interacaoController');

router.post('/', interacaoController.enviarInteracao);

module.exports = router;
