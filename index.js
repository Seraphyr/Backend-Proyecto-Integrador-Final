require('dotenv').config()
const port = process.env.EXPRESS_PORT

const express = require("express");
const app = express();
app.use(express.json());


const routes = require("./routes/indexRoutes")
app.use(routes)


app.listen(port, () => {
    console.log(`Escuchando en el puerto ${port}`);
})