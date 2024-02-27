const knex = require('../config/knexfile');

const verArtistas = async (req, res) => {
    const result = await knex('artistas').select('*')
    res.json(result)
}


module.exports = {
    verArtistas
}