const knex = require('../config/database')

const saludo = async (req, res) => {
   const result = await knex("artistas").select('*')
   res.json(result)
}

module.exports = {
    saludo
}