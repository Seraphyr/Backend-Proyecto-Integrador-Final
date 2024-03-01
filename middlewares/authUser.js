
const jwt = require('jsonwebtoken');
require('dotenv').config();

async function  verificarToken(req, res, next){
    const token = req.headers['token'];
    if(!token) {
        return res.status(401).json({ error: true, message: 'Acceso denegado' });
    }

    try{
        const verified = jwt.verify(token, process.env.TOKEN_SECRET)
        
        if(verified){
            next();
        }
        
    } catch (error) {
        return res.status(400).json({ error: true, message: 'El Token no es válido' });
    }
}

module.exports = {
    verificarToken
}