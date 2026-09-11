# Jenkins CI/CD Demo App

A minimal Express.js application used to demonstrate a full 7-stage Jenkins
pipeline: Checkout/Build, Test, Code Analysis, Security Scan, Deploy to
Staging, Integration Tests on Staging, and Deploy to Production.

## Routes

* `GET /` returns a 200 status with a greeting message.
* `GET /health` returns a 200 status with `{ "status": "ok" }`, used as the
health check during the Integration Tests on Staging stage.

## Scripts

* `npm start` runs the app on port 4000 (or `PORT` env var).
* `npm test` runs the Jest/Supertest test suite and generates a coverage
report (`coverage/lcov.info`) used by the SonarCloud Code Analysis stage.
* &#x20;  <!-- Triggering auto-build demo -->
* <!-- Auto-trigger demo commit-->
* 
* 



