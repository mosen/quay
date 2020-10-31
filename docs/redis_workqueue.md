# REDIS WorkQueue Implementation Notes #

## Queues ##

- **chunk cleanup queue**
- **image replication queue**: Distributed (non-local) storage replication (per-namespace). Implementation `workers/storagereplication.py`
- **dockerfile build queue**: Consumed by "buildman" which is a substantial piece of functionality that builds images. See `buildman/`
- **notification queue**: Provides a way of processing system notifications to be delivered via various means: E-mail,
  Slack, etc. Implementation `workers/notificationworker/notificationworker.py`
- **secscan v4 notification queue**
- **export action logs queue** Exports action logs for a repository or namespace. Implementation `workers/exportactionlogsworker.py`.
- **repository gc queue**
- **namespace gc queue**

## Testing ##

To take an example, [endpoints/api/repositorynotification_models_pre_oci.py](../endpoints/api/repositorynotification_models_pre_oci.py)
has a `queue_test_notification` method which may(?) be used in the UI to test notification delivery.

## Redis Connection ##

A good example of the current style of Redis connection is from the Redis buildlogs configuration
which is consumed by the `BuildLogs` class in [data/buildlogs.py](../data/buildlogs.py).

- `BUILDLOGS_REDIS` is supplied as the first argument to the constructor
- `BUILDLOGS_OPTIONS` is used as splat *args in the constructor.

