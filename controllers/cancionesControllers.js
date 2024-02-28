
const knex = require('../config/knexfile');

const verCanciones = (req, res) => {
  knex.select('*').from('canciones')
    .then(data => {
      res.status(200).json(data);
    })
    .catch(err => {
      res.status(500).json({ error: 'No se pudieron obtener los datos' });
    });
};

module.exports = {
  verCanciones,
};