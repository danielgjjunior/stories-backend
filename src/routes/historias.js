const express = require('express');
const router = express.Router();
const historiasController = require('../controllers/historiasController');

router.post('/', historiasController.cadastrarHistoria);
router.get('/', historiasController.listarHistorias);
router.put('/:id', historiasController.atualizarHistoria);
router.delete('/:id', historiasController.excluirHistoria);

module.exports = router;
