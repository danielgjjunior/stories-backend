const { createChat } = require("completions");

const chat = createChat({
  apiKey: process.env.OPENAI_API_KEY,
  model: "gpt-3.5-turbo",
  // or:
  // model: 'gpt-4',
});

async function enviarParaOpenAI(promptCompleto) {
  try {
    const response = await chat.sendMessage(promptCompleto);

    // Check if response or response.content is undefined
    if (!response || !response.content) {
      throw new Error('Resposta da OpenAI não está no formato esperado.');
    }

    // Extract the assistant's content from the `response` object
    const respostaOpenAI = response.content;
    return respostaOpenAI;
  } catch (error) {
    console.error(error);
    throw new Error('Erro ao interagir com a OpenAI');
  }
}

module.exports = {
  enviarParaOpenAI,
};
