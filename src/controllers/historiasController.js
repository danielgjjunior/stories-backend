const prisma = require('../models/prisma');

const cadastrarHistoria = async (req, res) => {
  const { user_id, title } = req.body;

  try {
    const novaHistoria = await prisma.historia.create({
      data: { user_id, title },
    });

    res.json(novaHistoria);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao cadastrar a história' });
  }
};

const listarHistorias = async (req, res) => {
  try {
    const historias = await prisma.historia.findMany();
    res.json(historias);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao listar as histórias' });
  }
};

const atualizarHistoria = async (req, res) => {
  const { id } = req.params;
  const { user_id, title } = req.body;

  try {
    const historiaAtualizada = await prisma.historia.update({
      where: { id: parseInt(id) },
      data: { user_id, title },
    });

    res.json(historiaAtualizada);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao atualizar a história' });
  }
};

const excluirHistoria = async (req, res) => {
  const { id } = req.params;

  try {
    const historiaExcluida = await prisma.historia.delete({
      where: { id: parseInt(id) },
    });

    res.json(historiaExcluida);
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao excluir a história' });
  }
};

module.exports = {
  cadastrarHistoria,
  listarHistorias,
  atualizarHistoria,
  excluirHistoria,
};
