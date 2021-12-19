import './setup';

import express from 'express';
import cors from 'cors';
import 'reflect-metadata';

import connectDatabase from './database';

import professorRouter from './routers/professorRouter';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
  res.send('test');
});

app.use(professorRouter);

export async function init() {
  await connectDatabase();
}

export default app;
