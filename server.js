import express from 'express';
import { config } from 'dotenv-flow';

config();

const app = express();

app.get('/api', (req, res) => {
    res.json({
        version: '1.0.0',
        message: 'Hello From Custom Application',
    });
});

app.listen(process.env.PORT, () => {
    console.log('Server listening on port:', process.env.PORT);
});
