from flask import app
from flask_cors import CORS
from flask_session import Session

CORS(app, supports_credentials=True)

Session(app)

CORS(app, supports_credentials=True)


@app.route('/')
def welcome():
    return 'RTOD RESTFUL API'


if __name__ == '__main__':
    app.run("0.0.0.0", 5000)
