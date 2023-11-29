// controllers/interacaoController.js
const openaiService = require('../services/openAIService'); // Importe o seu service

const enviarInteracao = async (req, res) => {
  const { prompt, respostaUsuario } = req.body;

  try {
    const promptCompleto = `${prompt}\n${respostaUsuario}`;
    const respostaOpenAI = await openaiService.enviarParaOpenAI(promptCompleto); 

    res.json({ success: true, textEnviado: promptCompleto, respostaOpenAI });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: 'Erro ao interagir com a OpenAI' });
  }
};

module.exports = {
  enviarInteracao,
};
