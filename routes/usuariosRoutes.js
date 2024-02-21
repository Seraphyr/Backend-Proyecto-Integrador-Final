const express = require('express');
const route = express.Router();

const usuariosControllers = require("../controllers/usuariosControllers")

const usuariosValidators = require("../validators/usuariosValidators")

const runValidation = require("../middlewares/validatorMiddleware")

/* route.get('/saludo', usuariosControllers.saludo) */

route.post('/login', usuariosControllers.loginUser);

route.post('/signUp', usuariosValidators.validarSignUp, runValidation, usuariosControllers.signUpUser);

module.exports = route;