const express = require("express");
const app = express();
app.use(express.json());


const routes = require("./routes/indexRoutes")
app.use(routes)

const port = 3000;

app.listen(port, () => {
    console.log(`Escuchando en el puerto ${port}`);
})