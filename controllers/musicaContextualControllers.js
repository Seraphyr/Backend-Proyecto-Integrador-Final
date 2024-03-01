const knex = require('../config/knexfile');

const verActividad = async (req, res) => {
    const result = await knex('actividad').select('*')
    res.status(200).json(result)
}

const verEstadoAnimo = async (req, res) => {
    const result = await knex('estado_de_animo').select('*')
    res.status(200).json(result)
}

const verClima = async (req, res) => {
    const result = await knex('como_esta_el_clima').select('*')
    res.status(200).json(result)
}

const verGenero = async (req, res) => {
    const result = await knex('genero').select('*')
    res.status(200).json(result)
}


module.exports = {
    verActividad,
    verEstadoAnimo,
    verClima,
    verGenero
}