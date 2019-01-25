from flask import Flask
app = Flask(__name__)

import sys
assert sys.version_info.major == 3

@app.route('/')
def hello_world():
    return "Hello World! 02-builtin-server"

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=8000)