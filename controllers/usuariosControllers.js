const knex = require('../config/knexfile');
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')


const loginUser = async (req, res) => {
    const nombre = req.body.username;
    const email = req.body.email
    let usuario = undefined
    
    if(!nombre){
         usuario = await knex('usuarios').orWhere('email', '=', email).first();
    } 
    if (!email){
         usuario = await knex('usuarios').where('nombre_de_usuario', '=', nombre).first();
    }

    
    if (!usuario) {
        return res.status(400).json({ error: 'Usuario no encontrado' });
    }

    const validarPassword = await bcrypt.compare(req.body.password, usuario.contraseña);
    if(!validarPassword) {
        return res.json({error: 'Contraseña incorrecta'})
    }

    const token = jwt.sign({
        id: usuario.id,
        mail: usuario.mail
    }, process.env.TOKEN_SECRET)

    res.json({usuario: usuario, token: token})
}

const signUpUser = async (req,res) => {
    const salt = await bcrypt.genSalt(10);
    const password = await bcrypt.hash(req.body.password, salt);

    const user = {
        nombre_de_usuario: req.body.username,
        email: req.body.email,
        contraseña: password
    }

    const result = await knex('usuarios').insert(user).returning('*')
    res.json(result)
}



module.exports = {
    loginUser,
    signUpUser
}