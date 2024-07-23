import express from 'express';
import bodyParser from 'body-parser';
import fs from 'fs';
import cors from 'cors';
import path from 'path';


const app = express();
const PORT = 3010;

app.use(cors());
app.use(bodyParser.json());

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  fs.readFile('./data/locales.json', 'utf8', (err, data) => {
    if (err) {
      console.error('Error al leer el archivo locales.json:', err);
      res.status(500).send('Error interno del servidor');
      return;
    }

    const locales = JSON.parse(data);
    const user = locales.locales.find((locale) => locale.nombre === username && locale.contraseña === password);

    if (user) {
      res.status(200).send('Ingreso exitoso');
    } else {
      res.status(401).send('Nombre de usuario o contraseña incorrectos');
    }
  });
});


// Nueva ruta para obtener los productos
app.get('/productos', (req, res) => {
  fs.readFile('./Server/data/productos.json', 'utf8', (err, data) => {
    if (err) {
      console.error('Error al leer el archivo productos.json:', err);
      res.status(500).send('Error interno del servidor');
      return;
    }
    try {
      const productos = JSON.parse(data);
      res.status(200).json(productos);
    } catch (error) {
      console.error('Error al parsear productos.json:', error);
      res.status(500).send('Error al parsear el archivo JSON');
    }
  });
});



app.listen(PORT, () => {
  console.log(`Servidor iniciado en el puerto ${PORT}`);
});
