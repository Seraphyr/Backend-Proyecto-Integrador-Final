const knex = require('../config/knexfile');
const jwt = require('jsonwebtoken');
require('dotenv').config();

const crearCupidoMusical = async (req, res) => {
    const listaArtistas = req.body.listaArtistas;
    let playlist = []
    const token = req.headers['token']
    let idUsuario 

    /* Traigo el id del usuario por el token */
    try{
        const verified = jwt.verify(token, process.env.TOKEN_SECRET);
        req.user = verified
        idUsuario = req.user.id
    }  catch (error) {
        res.json({mensaje: error})
    }

     /* Creo la playlist en la base de datos */
     const playlistDB = {
        nombre: "Playlist Generada",
        usuario_id: idUsuario
    }

    const result = await knex("playlist").insert(playlistDB).returning('*')
    const idPlaylist = result[0].id

   
    /* Guardo todas las canciones en el array playlist */
    for (let i=0; i<listaArtistas.length; i++){
        let numero = parseInt(listaArtistas[i])
        let cancion = await knex('canciones').where('artista_id', "=", numero)
        
        for (let f=0 ; f<cancion.length; f++){
            playlist.push(cancion[f])   
        }            
    }
    res.json(playlist)
    
   
    /* Recorro el array playlist y cargo las canciones en la base de datos */
    for (i = 0; i<playlist.length; i++){
        let idCancion = playlist[i].id

        const listaCanciones = {
            playlist_id: idPlaylist,
            canciones_id: idCancion
        }
    const result = await knex("lista").insert(listaCanciones).returning('*')
    }

   
}


module.exports = {
    crearCupidoMusical
}