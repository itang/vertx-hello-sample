### usage:
    $ vertx version
        vert.x 2.0.0-final (built 2013-07-17 22:04:19)

Java:

    $ javac -cp ".:$VERTX_HOME/lib/*" Server.java
    $ javac -cp ".;%VERTX_HOME%/lib/*" Server.java
    $ vertx run Server -instances 4

or

    $ vertx run Server.java -instances 4

Ruby:

    $ vertx run server.rb -instances 4

JavaScript:

    $ vertx run server.js -instances 4

### ab test result:

    ab -n 1000000 -c 100 -k http://localhost:8080/


#### Java:

    Document Path:          /
    Document Length:        19 bytes

    Concurrency Level:      100
    Time taken for tests:   10.186 seconds
    Complete requests:      1000000
    Failed requests:        0
    Write errors:           0
    Keep-Alive requests:    1000000
    Total transferred:      82000000 bytes
    HTML transferred:       19000000 bytes
    Requests per second:    98169.16 [#/sec] (mean)
    Time per request:       1.019 [ms] (mean)
    Time per request:       0.010 [ms] (mean, across all concurrent requests)
    Transfer rate:          7861.20 [Kbytes/sec] received

    Connection Times (ms)
    min  mean[+/-sd] median   max
    Connect:        0    0   0.0      0       6
    Processing:     0    1   1.5      1      25
    Waiting:        0    1   1.5      1      25
    Total:          0    1   1.5      1      25

    Percentage of the requests served within a certain time (ms)
    50%      1
    66%      1
    75%      1
    80%      1
    90%      1
    95%      2
    98%      6
    99%     10
    100%     25 (longest request)

#### Ruby: (outdated)

    Server Software:
    Server Hostname:        localhost
    Server Port:            8080

    Document Path:          /
    Document Length:        12 bytes

    Concurrency Level:      100
    Time taken for tests:   6.429 seconds
    Complete requests:      100000
    Failed requests:        0
    Write errors:           0
    Total transferred:      5101377 bytes
    HTML transferred:       1200324 bytes
    Requests per second:    15553.42 [#/sec] (mean)
    Time per request:       6.429 [ms] (mean)
    Time per request:       0.064 [ms] (mean, across all concurrent requests)
    Transfer rate:          774.84 [Kbytes/sec] received

    Connection Times (ms)
                  min  mean[+/-sd] median   max
    Connect:        0    3  39.8      2    1006
    Processing:     0    3   3.0      3     210
    Waiting:        0    2   3.0      2     210
    Total:          0    6  39.9      4    1012

    Percentage of the requests served within a certain time (ms)
      50%      4
      66%      5
      75%      6
      80%      6
      90%      7
      95%      7
      98%      8
      99%     10
     100%   1012 (longest request)

#### JavaScript:

    Document Path:          /
    Document Length:        17 bytes

    Concurrency Level:      100
    Time taken for tests:   20.273 seconds
    Complete requests:      1000000
    Failed requests:        0
    Write errors:           0
    Keep-Alive requests:    1000000
    Total transferred:      80000000 bytes
    HTML transferred:       17000000 bytes
    Requests per second:    49326.54 [#/sec] (mean)
    Time per request:       2.027 [ms] (mean)
    Time per request:       0.020 [ms] (mean, across all concurrent requests)
    Transfer rate:          3853.64 [Kbytes/sec] received

    Connection Times (ms)
    min  mean[+/-sd] median   max
    Connect:        0    0   0.0      0       7
    Processing:     0    2   1.7      1      56
    Waiting:        0    2   1.7      1      56
    Total:          0    2   1.7      1      57

    Percentage of the requests served within a certain time (ms)
    50%      1
    66%      2
    75%      2
    80%      2
    90%      3
    95%      6
    98%      6
    99%      9
    100%     57 (longest request)


#### Golang:

  $ go version

    go version go1.1.1 linux/amd64

  $ go run server.go

    Document Length:        17 bytes

    Concurrency Level:      100
    Time taken for tests:   15.109 seconds
    Complete requests:      1000000
    Failed requests:        0
    Write errors:           0
    Keep-Alive requests:    1000000
    Total transferred:      158000000 bytes
    HTML transferred:       17000000 bytes
    Requests per second:    66184.69 [#/sec] (mean)
    Time per request:       1.511 [ms] (mean)
    Time per request:       0.015 [ms] (mean, across all concurrent requests)
    Transfer rate:          10212.09 [Kbytes/sec] received

    Connection Times (ms)
    min  mean[+/-sd] median   max
    Connect:        0    0   0.1      0      11
    Processing:     0    2   1.1      1      27
    Waiting:        0    2   1.1      1      27
    Total:          0    2   1.1      1      27

    Percentage of the requests served within a certain time (ms)
    50%      1
    66%      2
    75%      2
    80%      2
    90%      3
    95%      3
    98%      4
    99%      5
    100%     27 (longest request)


Notice:
Vertx version, Response Headers:

    Content-Length:19


Golang version, Response Headers:

    Content-Type: text/plain; charset=utf-8
    Content-Length: 17
    Date: Thu, 18 Jul 2013 12:59:05 GMT
