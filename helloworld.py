from flask import Flask
#import index.html

app = Flask(__name__)

@app.route('/')

def hello_world():
    #c = 1/0
    return "hello world"

if __name__=="__main__":
    app.run(host="0.0.0.0", port=80, debug=True)
