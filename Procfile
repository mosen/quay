app: gunicorn -c conf/gunicorn_local.py application:application
webpack: npm run watch
builder: python -m buildman.builder
chunkcleanup: python -m workers.chunkcleanupworker
exportactionlogs: rq worker --url redis://:redis@localhost --worker-class workers.worker.RedisWorker exportactionlogs
repositorygc: rq worker --url redis://:redis@localhost --worker-class workers.worker.RedisWorker repositorygc
namespacegc: rq worker --url redis://:redis@localhost --worker-class workers.worker.RedisWorker namespacegc
notification: rq worker --url redis://:redis@localhost --worker-class workers.worker.RedisWorker notification
securityscanningnotification: python -m workers.securityscanningnotificationworker
