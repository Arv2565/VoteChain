# Setup

### Prerequisites

.

```
npm install -g truffle browserify
npm install
pip install fastapi psycopg2 pydantic python-dotenv uvicorn uvicorn[standard] PyJWT
```

```
truffle compile
browserify ./src/js/app.js -o ./src/dist/app.bundle.js
node index.js
```

```
cd db_api
uvicorn main:app --reload --host 127.0.0.1
truffle migrate
```

### DB setup

```sql
CREATE DATABASE voter_db;
CREATE TABLE voters (
    id SERIAL PRIMARY KEY,
    voter_id VARCHAR NOT NULL,
    role VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO voters (voter_id, role, password) VALUES ('testadmin', 'admin', 'testpassword');
INSERT INTO voters (voter_id, role, password) VALUES ('testuser', 'user', 'testpassword');
INSERT INTO voters (voter_id, role, password) VALUES ('70bf9c1f150c32fd4bda1da1ee21b86ff7c58326a6a998dfbdaf0292efcab232', 'user', 'testpassword');
CREATE ROLE dbadmin WITH LOGIN PASSWORD 'mypassword';
GRANT ALL PRIVILEGES ON voters TO dbadmin;
```
