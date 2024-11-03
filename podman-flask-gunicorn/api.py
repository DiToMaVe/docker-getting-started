from flask import Flask, jsonify
 
app = Flask(__name__)
 
@app.route('/', methods=['GET'])
def hello_world():
    return jsonify({'message': 'Hello World'})
 
@app.route('/test', methods=['GET'])
def test():
    return jsonify({'test': 'test'})
