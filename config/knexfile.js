require('dotenv').config();

const knex = require('knex')({
    client: process.env.DB_DRIVER,
    connection: {
      host : process.env.DB_HOSTNAME,
      port : process.env.DB_PORT,
      user : process.env.DB_USERNAME,
      password : process.env.DB_PASSWORD,
      database : process.env.DB_DATABASE
    }
  });

module.exports = knex;