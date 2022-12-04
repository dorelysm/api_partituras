const { Client } = require("pg");

const client = new Client({
    user: "postgres",
    host: "localhost",
    database: "api",
    password: "password",
    port: 5432,
});

const getCategorias = async (req, res) => {
    const response = await client.query('SELECT * FROM public."categorias"');
    res.status(200).json(response.rows);
};

const getCancionesDeCategoria = async(req, res) => {
    const categoria = parseInt(req.params.categoria);
    const response = await client.query('SELECT * FROM public."canciones" WHERE categoria = $1', [categoria]);
    res.json(response.rows);
}

const getCancionId = async (req, res) => {
    const id = parseInt(req.params.id);
    const response = await client.query('SELECT * FROM public."canciones" WHERE id_can = $1', [id]);
    res.status(200).json(response.rows);
};

const test = async (req, res) => {
    //const response = await client.query('SELECT * FROM public."Categorias"');
    console.log("Ok");
    res.send('hola mundo');
}

module.exports = {
    getCategorias,
    getCancionesDeCategoria,
    getCancionId,
    test,
};

getCategorias().then((result) => {
    console.log(result);
});