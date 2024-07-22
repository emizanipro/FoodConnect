import express from 'express';
import cors from 'cors';
import menu4Router from './funciones/menu4.js';
import { MercadoPagoConfig, Preference, Payment } from 'mercadopago';
import bodyParser from 'body-parser';


const client = new MercadoPagoConfig({
  accessToken: "APP_USR-3129767152155496-091016-27e065d7b271a74ac16f3809f11b9f1d-502042322",
});

const app = express();
const port = 3002;

app.use(bodyParser.json());
app.use(cors());
app.use(express.json());


app.use('/menu4', menu4Router); // Montar el enrutador en la ruta '/menu4'

app.get("/", (req, res) => {
  res.send("soy el server");
});


app.post("/process_payment", async (req, res) => {
  try {
    const payment = new Payment(client);
    const result = await payment.create({ body: req.body });
    res.json(result);
  } catch (error) {
    console.error('Error processing payment:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});




/* MERCADO PAGO / MERCADO PAGO */
app.post("/create_preference", async (req, res) => {
  try {
    const { title, quantity, unit_price } = req.body;

    const items = [{
      title: title,
      quantity: Number(quantity),
      unit_price: unit_price,
      currency_id: "ARS",
    }];

    const body = {
      items,
      back_urls: {
        success: "http://localhost:5173/ventaonline",
        failure: "http://localhost:5173/ventaonline",
        pending: "",
      },
      auto_return: "approved",
    };

    const preference = new Preference(client);
    const result = await preference.create({ body });
    res.json({
      id: result.id,
    });

  } catch (error) {
    console.error('Error creating preference:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});





/* LOCALES / LOCALES */
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















app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
