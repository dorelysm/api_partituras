const { Router } = require('express');
const router = Router();

const { getCategorias, getCancionesDeCategoria, getCancionId, test} = require('../controllers/index.controller');

router.get('/categorias', getCategorias);
router.get('/categoria/:categoria', getCancionesDeCategoria);
router.get('/canciones/:id', getCancionId);
router.get('/test', test),

module.exports = router;
