const express = require('express');
const app = express();
const port = 3003;

// Define a simple route
app.get('/', (req, res) => {
  res.send('Hello Rajasekhar, Welcome to sample Node.js!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
