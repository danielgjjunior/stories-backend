const prisma = require('../models/prisma');

const listarPrompts = async (req, res) => {
  const { id_historia } = req.params;
  try {
    const prompts = await prisma.promptHist.findMany({
      where: { id_historia: parseInt(id_historia) },
    });
    res.json(prompts);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao listar os prompts' });
  }
};

const cadastrarPrompt = async (req, res) => {
  const { id_historia, prompt, options, intro, desfecho } = req.body;
  try {
    const novoPrompt = await prisma.promptHist.create({
      data: { id_historia, prompt, options, intro, desfecho },
    });
    res.json(novoPrompt);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao cadastrar o prompt' });
  }
};

const listarTodosPrompts = async (req, res) => {
  try {
    const prompts = await prisma.promptHist.findMany();
    res.json(prompts);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao listar os prompts' });
  }
};

const atualizarPrompt = async (req, res) => {
  const { id } = req.params;
  const { id_historia, prompt, options, intro, desfecho } = req.body;

  try {
    const promptAtualizado = await prisma.promptHist.update({
      where: { id: parseInt(id) },
      data: { id_historia, prompt, options, intro, desfecho },
    });

    res.json(promptAtualizado);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao atualizar o prompt' });
  }
};

const excluirPrompt = async (req, res) => {
  const { id } = req.params;

  try {
    const promptExcluido = await prisma.promptHist.delete({
      where: { id: parseInt(id) },
    });

    res.json(promptExcluido);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao excluir o prompt' });
  }
};

module.exports = {
  listarPrompts,
  cadastrarPrompt,
  listarTodosPrompts,
  atualizarPrompt,
  excluirPrompt,
};
