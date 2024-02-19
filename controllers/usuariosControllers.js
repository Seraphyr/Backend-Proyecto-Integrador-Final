const knex = require('../config/knexfile');
const bcrypt = require('bcrypt')
/* import knexConfig from '../config/knexfile'; */
/* const { JWT_TOKEN } = require('../middlewares/authUser').default; */

/* const saludo = (req, res) => {
    res.send("Buenas buenas")
} */

const loginUser = async (req, res) => {
    const { nombre, contraseña } = req.body;
    if (!nombre || !contraseña) {
        return res.status(400).json({ message: 'Todos los campos son obligatorios' });
    }
    const usuarioEncontrado = await knex('usuarios').where('nombre_de_usuario', '=', nombre).orWhere('email', '=', nombre).first();
    const contraseñaEncontrada = await knex('usuarios').where('contraseña', '=', contraseña).first();
    if (!usuarioEncontrado || !contraseñaEncontrada) {
        return res.status(401).json({ message: 'Credenciales inválidas' });
    }
    return res.status(200).json({ usuarioEncontrado});

    /* const token = jwt.sign({ userId: usuarioEncontrado.id }, JWT_TOKEN, { expiresIn: '10m' });
    res.status(200).json({ message: 'Usuario autenticado', token });  */
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