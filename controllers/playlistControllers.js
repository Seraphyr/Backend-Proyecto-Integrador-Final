const knex = require('../config/knexfile');

const crearCupidoMusical = async (req, res) => {
    const listaArtistas = req.body.listaArtistas;
    let playlist = []

    for (let i=0; i<listaArtistas.length; i++){
        let numero = parseInt(listaArtistas[i])
        let cancion = await knex('canciones').where('artista_id', "=", numero)
        
        for (let f=0 ; f<cancion.length; f++){
            playlist.push(cancion[f])   
        }            
    }
    res.json(playlist)
    
    /* const playlistDB = {
        nombre: "aaa",
        duracion_total: duracionTotal,
        usuario_id: 1
    }

    const result = await knex("playlist").insert(playlistDB).returning('*')

    res.json(result) */
}


module.exports = {
    crearCupidoMusical
}