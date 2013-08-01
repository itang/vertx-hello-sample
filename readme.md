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

Clojure:

    $ vertx run server.clj -instances 4

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

#### Ruby:

    Document Length:        19 bytes

    Concurrency Level:      100
    Time taken for tests:   16.704 seconds
    Complete requests:      1000000
    Failed requests:        0
    Write errors:           0
    Keep-Alive requests:    1000000
    Total transferred:      82000000 bytes
    HTML transferred:       19000000 bytes
    Requests per second:    59864.18 [#/sec] (mean)
    Time per request:       1.670 [ms] (mean)
    Time per request:       0.017 [ms] (mean, across all concurrent requests)
    Transfer rate:          4793.81 [Kbytes/sec] received

    Connection Times (ms)
    min  mean[+/-sd] median   max
    Connect:        0    0   0.1      0       9
    Processing:     0    2   3.0      1      97
    Waiting:        0    2   3.0      1      97
    Total:          0    2   3.0      1      97

    Percentage of the requests served within a certain time (ms)
    50%      1
    66%      1
    75%      1
    80%      2
    90%      2
    95%      4
    98%      8
    99%     13
    100%     97 (longest request)

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

#### Clojure:

    Document Length:        27 bytes

    Concurrency Level:      100
    Time taken for tests:   16.922 seconds
    Complete requests:      1000000
    Failed requests:        0
    Write errors:           0
    Keep-Alive requests:    1000000
    Total transferred:      90000000 bytes
    HTML transferred:       27000000 bytes
    Requests per second:    59094.49 [#/sec] (mean)
    Time per request:       1.692 [ms] (mean)
    Time per request:       0.017 [ms] (mean, across all concurrent requests)
    Transfer rate:          5193.85 [Kbytes/sec] received

    Connection Times (ms)
    min  mean[+/-sd] median   max
    Connect:        0    0   0.1      0       8
    Processing:     0    2   1.7      1      46
    Waiting:        0    2   1.7      1      46
    Total:          0    2   1.7      1      49

    Percentage of the requests served within a certain time (ms)
    50%      1
    66%      1
    75%      1
    80%      2
    90%      2
    95%      5
    98%      7
    99%     10
    100%     49 (longest request)



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
