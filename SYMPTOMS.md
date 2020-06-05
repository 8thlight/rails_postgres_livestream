# Symptoms

The endpoint that returns an index of articles `/api/articles` works when we seed data and run it locally (with one minor bugs). However, it is really slow on production, and we cannot figure out why.

* It does not matter if I limit the number of articles retrieved to just one - the query is still slow.
* There seems to be some broken code! The default limit of 20 articles is not working if I ping `/api/articles`. However, the endpoint does work if I ping `/api/articles?limit=10`

We have tried playing around with a few variations of the query, but we really don't know how to pinpoint where the problem is coming from.
