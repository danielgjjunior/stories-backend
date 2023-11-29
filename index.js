const express = require('express');
const cors = require('cors');
const promptsRoutes = require('./src/routes/prompts');
const interacaoRoutes = require('./src/routes/interacao');
const historiasRoutes = require('./src/routes/historias');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.use('/prompts', promptsRoutes);
app.use('/interacao', interacaoRoutes);
app.use('/historias', historiasRoutes);

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
