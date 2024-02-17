cd db_api
python3 -m venv env
source env/bin/activate
pip3 install -r requirements.txt
uvicorn main:app --reload --host 127.0.0.1