const knex = require('../config/knexfile');
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')


const loginUser = async (req, res) => {
    const username = req.body.username;
    let usuario = undefined

    usuario = await knex('usuarios').where('email', '=', username).orWhere('nombre_de_usuario', '=', username).first();
    if (!usuario) {
        return res.status(400).json({ error: 'Usuario no encontrado' });
    }


    const validarPassword = await bcrypt.compare(req.body.password, usuario.contraseña);
    if(!validarPassword) {
        return res.status(400).json({error: 'Contraseña incorrecta'})
    }

    const token = jwt.sign({
        id: usuario.id,
        mail: usuario.mail
    }, process.env.TOKEN_SECRET)

    res.status(200).json({usuario: usuario, token: token})
}

const signUpUser = async (req,res) => {
    const salt = await bcrypt.genSalt(10);
    const password = await bcrypt.hash(req.body.password, salt);
    const nombre_de_usuario = req.body.username;
    const email= req.body.email
    const existeUsuario = await knex('usuarios').where('nombre_de_usuario', '=', nombre_de_usuario).first();
    const existeEmail = await knex('usuarios').where('email', '=', email).first();

    if (existeEmail) {
        return res.status(400).json({mensaje: "Ya hay un usuario registrado con este mail"})
    }

    if(existeUsuario) {
        return res.status(400).json({mensaje: "El nombre de usuario no esta disponible"})
    } /* else{
        res.json({mensaje: "El nombre de usuario está disponible"})
    } */

    const user = {
        nombre_de_usuario: nombre_de_usuario,
        email: email,
        contraseña: password
    }

    const result = await knex('usuarios').insert(user).returning('*')
    res.status(201).json(result)
}



module.exports = {
    loginUser,
    signUpUser
}