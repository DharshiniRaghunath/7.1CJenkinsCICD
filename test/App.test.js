const request = require('supertest');
const app = require('../index');

describe('GET /', () => {
  it('responds with a 200 status and a greeting message', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toContain('Hello, DevSecOps Pipeline!');
  });
});

describe('GET /health', () => {
  it('responds with a 200 status and status ok', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
    expect(res.body.status).toBe('ok');
  });
});