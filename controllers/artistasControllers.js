const knex = require('../config/knexfile');

const verArtistas = async (req, res) => {
    const result = await knex('artistas').select('*')
    res.status(200).json(result)
}

const artistasRandom = async (req, res) => {
    const result = await knex('artistas').select('*').orderByRaw('RANDOM()').limit(1)
    res.status(200).json(result)
}

/* SELECT * FROM your_table ORDER BY RAND() LIMIT 1; */

module.exports = {
    verArtistas,
    artistasRandom

}