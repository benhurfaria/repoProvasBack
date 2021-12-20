import supertest from 'supertest';
import { getConnection } from 'typeorm';
import app, { init } from '../src/app';

beforeAll(async () => {
  await init();
});

afterAll(async () => {
  await getConnection().close();
});

describe('GET /teachers', ()=>{
    it('should answer array with teachers objetcs', async ()=>{
        const response = await supertest(app).get('/professores');
        expect(Array.isArray(response.body)).toBeTruthy();
    })
});
