const express = require('express')
const Chance = require('chance');
const app = express()
const port = 3000

const config = {
    host: 'mysql',
    database: 'nodedb',
    user: 'root',
    password: 'root'
};

const mysql = require('mysql')

app.get('/', (req, res) => {

    const chance = new Chance();
    const nomeFake = chance.name();

    const connection = mysql.createConnection(config)
    const insert = `INSERT INTO people (name) VALUES ('${nomeFake}')`;
    const select = `SELECT * FROM people`

    connection.query(insert);

    connection.query(select, (error, results) => {
        const titulo = 'Full Cycle Rocks!!';

        // Itera sobre os resultados e cria a estrutura HTML com os nomes
        const listaItems = results.map(result => `<li>${result.name}</li>`).join('');

        // Cria a estrutura completa com título e lista de itens
        const html = `<h1>${titulo}</h1><ul>${listaItems}</ul>`;

        // Envia a resposta
        res.send(html);
    });

    // connection.end();
});


app.listen(port, () => {
    console.log("Rodando na porta "+port)
})