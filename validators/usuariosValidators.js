const {param, body} = require("express-validator");

const validarSignUp = [
    body("email").notEmpty().withMessage("Campo requerido").isEmail().withMessage("Email no valido"),
    body("username").notEmpty().withMessage("Username campo requerido"),
    body("password").notEmpty().withMessage("Password campo requerido").isLength({min:8}).withMessage("Tiene que tener al menos 8 caracteres"),
]

module.exports = {
    validarSignUp
}