# Setup
### Prerequisites

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


