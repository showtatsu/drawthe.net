const express = require('express');
const app = express();
const PORT = 3000;

// For develop, be careful
app.use(express.static('.'));
app.listen(PORT, () => console.log(`Server listening on port: ${PORT}`));
