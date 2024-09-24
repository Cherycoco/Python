from flask import Flask
from redis import Redis

app = Flask(__name__)
redis = Redis(host='redis-container', port=6379)

@app.route('/')
def hello():
    redis.incr('hits')
    return 'Cette page a été vue {} fois.'.format(redis.get('hits'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
