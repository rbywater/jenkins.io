---
:layout: post
:title: Wiki and issue tracker outage over the weekend
:nodeid: 596
:created: 1438723230
:tags:
- infrastructure
- meta
:author: danielbeck
---
As you may have noticed, our wiki and issue tracker were unavailable from Thursday to Sunday last week. What happened?

We host parts of our infrastructure at the Open Source Lab at Oregon State (OSUOSL), including the databases for these two services. So far, there's no post mortem by OSUOSL (they expect to post one later this week), so we need to piece together what we know.

The databases for the wiki and issue tracker became [inaccessible around midnight/12 AM Thu/Fri night](https://twitter.com/osuosl/status/626903003203637248) (all times UTC). Due to the large number and size of databases on that server, [pulling from backups](https://twitter.com/osuosl/status/626946293663821824), [restoring from backup](https://twitter.com/osuosl/status/627027620845129729) and [replaying the binlogs](https://twitter.com/osuosl/status/627237502420561920) took them quite a while. During that time, we put up a maintenance screen on the wiki (and messed up the one for Jira, so there were connection timeouts instead).

The databases were back around 3 AM on Sunday. We disabled the maintenance screens around 6 PM later that day.

While this was a rather lengthy outage, it could have been much worse. We lost none of the data, after all. We thank the OSUOSL team for their efforts getting everything back up over the weekend!
