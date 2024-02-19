const express = require('express');
const route = express.Router();

const usuariosControllers = require("../controllers/usuariosControllers")

/* route.get('/saludo', usuariosControllers.saludo) */

route.post('/login', usuariosControllers.loginUser);

route.post('/signUp', usuariosControllers.signUpUser);

module.exports = route;