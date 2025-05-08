//const express = require('express')

import express from 'express';
import peliculasRoutes from './routes/peliculas.routes.js';
//import {pool} from './db.js';

const app = express()

app.use(express.json())
app.use('/api/',peliculasRoutes);

app.use((req, res, next) => {
  res.status(404).json({
    message: 'No existe el endpoint'
  })
})

export default app