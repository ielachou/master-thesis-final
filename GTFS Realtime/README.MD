# GTFS Realtime


To import GTFS Realtime data in MobilityDB, we first have to catch the data. We will use a script written in Golang to catch them, due to its efficiency.

## Requirements
- Golang >= 1.18
- (Optional but recommended) Having GTFS Static data in the database matching the dates of the realtime data.
- (Optional) Protobuf library for Go

## User guide

### Run server

First, adapt the <code>main.go</code> to ensure the connection to the database. Fill correctly the <code>const</code> with the database information.

```go
const (
    host     = "host"
    port     = port
    user     = "user"
    password = "password"
    dbname   = "dbname"
)
```

Then, fill correctly the URL and necessary headers to get the GTFS realtime feed.

```go
// Create new GET request
req, err := http.NewRequest("GET", "HTTP API GET URL", nil)
.
.
.
// Set API Key header if needed
// req.Header.Set("API KEY HEADER", "API KEY")
```

Finally the server can be run to catch realtime data.

```bash
go run main.go
```

### Transform to MobilityDB

Once the database is full of realtime positions, we can transform them for MobilityDB.

If the database is also populated by a corresponding GTFS Static feed, run <code>precise_transform.sql</code>. This script will use the GTFS Static feed to create a precise trajectory.

In the other case, just run <code>simple_transform.sql</code>, it will just connect all the positions ordered by the timestamp. This will lead to convenient but not precise results.

Do not forget to replace the time zone with the one you are observing.


