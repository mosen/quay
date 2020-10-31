app: gunicorn -c conf/gunicorn_local.py application:application
webpack: npm run watch
builder: python -m buildman.builder
chunkcleanup: python -m workers.chunkcleanupworker
exportactionlogs: python -m workers.exportactionlogsworker
repositorygc: python -m workers.repositorygcworker
namespacegc: python -m workers.namespacegcworker
notification: python -m workers.notificationworker.notificationworker
securityscanningnotification: python -m workers.securityscanningnotificationworker
