const express = require('express');
const router = express.Router();
const promptsController = require('../controllers/promptsController');

router.get('/:id_historia', promptsController.listarPrompts);
router.post('/', promptsController.cadastrarPrompt);
router.get('/', promptsController.listarTodosPrompts);
router.put('/:id', promptsController.atualizarPrompt);
router.delete('/:id', promptsController.excluirPrompt);

module.exports = router;
