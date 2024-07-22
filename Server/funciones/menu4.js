import express from 'express';
import mysql from 'mysql2/promise';

const router = express.Router();

const connection = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'Emi2789!',
  database: 'pancho_primero',
});

router.get('/', async (req, res) => {
  try {
    const [bebidas] = await connection.execute('SELECT * FROM bebidas');
    const [combos] = await connection.execute('SELECT * FROM combos');
    const [comidas] = await connection.execute('SELECT * FROM comidas');
    const [cafeteria] = await connection.execute('SELECT * FROM cafeteria'); // Agregar esta línea

    const sortedProducts = {
      bebidas: bebidas,
      combos: combos,
      comidas: comidas,
      cafeteria: cafeteria, // Agregar esta línea
    };

    res.json(sortedProducts);
  } catch (error) {
    console.error('Error fetching product list:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});


router.post('/closeTable', async (req, res) => {
  const table = req.body.table;

  const { number: tableNumber, peopleCount, clientName, waiterName, comment, productos, total } = table;

  const query1 = `INSERT INTO mesa_atendidas (fecha, numero_mesa, cliente, camarero, comentario, total) VALUES (?, ?, ?, ?, ?, ?)`;
  try {
    const currentDate = new Date(); // Obtener la fecha actual
    const [result] = await connection.execute(query1, [currentDate, tableNumber, clientName, waiterName, comment, total]);
    const atendidaId = result.insertId;

    // Calcular el total para cada producto
    const productData = productos.map(product => {
      const productTotal = product.quantity * product.precio;
      return [currentDate, product.quantity, product.nombre, product.precio, productTotal];
    });

    const query2 = `INSERT INTO mesas_productos (fecha, cantidad, nombre, precio, total) VALUES ?`;
    await connection.query(query2, [productData]);

    res.send('Table closed successfully');
  } catch (err) {
    console.error('Error closing table:', err);
    res.status(500).send('Error closing table');
  }
});




router.post('/closeCaja', async (req, res) => {
  const { hora_apertura, hora_cierre, turno, encargado, dinero_ingresado, cantidad_mesas_atendidas } = req.body;

  const query = `
    INSERT INTO arqueos_caja (hora_apertura, hora_cierre, turno, encargado, dinero_ingresado, cantidad_mesas_atendidas)
    VALUES (?, ?, ?, ?, ?, ?)
  `;

  try {
    await connection.execute(query, [hora_apertura, hora_cierre, turno, encargado, dinero_ingresado, cantidad_mesas_atendidas]);
    res.send('Caja cerrada exitosamente');
  } catch (err) {
    console.error('Error al cerrar la caja:', err);
    res.status(500).send('Error al cerrar la caja');
  }
});


router.post('/closeProveedores', async (req, res) => {
  const { proveedores } = req.body;

  const query = `
    INSERT INTO proveedores (fecha, tipo, producto, cantidad_kg_unid, precio, nombre_proveedor)
    VALUES ?
  `;

  try {
    const currentDate = new Date();

    const values = proveedores.map(proveedor => [
      currentDate,
      proveedor.tipo,
      proveedor.producto,
      proveedor.cantidad,
      proveedor.precio,
      proveedor.nombre 

    ]);

    await connection.query(query, [values]);
    res.send('Proveedores saved successfully');
  } catch (error) {
    console.error('Error saving proveedores:', error);
    res.status(500).send('Error saving proveedores');
  }
});










export default router;

