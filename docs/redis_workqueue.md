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
