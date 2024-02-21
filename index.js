require('dotenv').config()
const cors = require('cors')
const port = process.env.EXPRESS_PORT

const express = require("express");
const app = express();
app.use(express.json());



app.use(cors())


const routes = require("./routes/indexRoutes")
app.use(routes)


app.listen(port, () => {
    console.log(`Escuchando en el puerto ${port}`);
})