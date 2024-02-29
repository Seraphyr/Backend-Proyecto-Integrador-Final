const knex = require('../config/knexfile');

const verActividad = async (req, res) => {
    const result = await knex('actividad').select('*')
    res.json(result)
}

const verEstadoAnimo = async (req, res) => {
    const result = await knex('estado_de_animo').select('*')
    res.json(result)
}

const verClima = async (req, res) => {
    const result = await knex('como_esta_el_clima').select('*')
    res.json(result)
}

const verGenero = async (req, res) => {
    const result = await knex('genero').select('*')
    res.json(result)
}


module.exports = {
    verActividad,
    verEstadoAnimo,
    verClima,
    verGenero
}