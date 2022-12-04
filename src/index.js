const express = require('express');
const bodyParse = require('body-parser');
const cors = require("cors");

const app = express();

// middlewares
//app.use(cors(cors()));
app.use(express.json());
app.use(express.urlencoded({extended: false}));

// simple route
app.get("/", (req, res) => {
    res.json({ message: "Ejecutando" });
  });

// Routes
app.use(require('./routes/index'));

// Port
const PORT = process.env.PORT || 4000;
app.listen(PORT);
console.log('server on port', PORT);
