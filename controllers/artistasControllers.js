const knex = require('../config/knexfile');

const verArtistas = async (req, res) => {
    const result = await knex('artistas').select('*')
    res.status(200).json(result)
}

const artistasRandom = async (req, res) => {
    const result = await knex('artistas').select('*').orderByRaw('RANDOM()').limit(1)
    res.status(200).json(result)
}

const verArtistasSeleccionados = async(req, res) => {
    const listaArtistas = req.body.listaSeleccionados;
    let fotosArtistas = []

    for (let i=0; i<listaArtistas.length; i++){
        let numero = parseInt(listaArtistas[i])
        let foto = await knex("artistas").select("imagen").where("id", "=", numero )
        

        for (let f=0 ; f<foto.length; f++){
            fotosArtistas.push(foto[f])   
        }
    }

    res.json(fotosArtistas)
}

/* SELECT * FROM your_table ORDER BY RAND() LIMIT 1; */

module.exports = {
    verArtistas,
    artistasRandom,
    verArtistasSeleccionados

}