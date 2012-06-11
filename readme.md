### usage:
    $ vertx version
        vert.x 1.0.1.final

Java:

    $ javac Server.java -cp $VERTX_HOME/lib/jars/vert.x-core.jar:$VERTX_HOME/lib/jars/vert.x-platform.jar
    
    $ vertx run Server -instances 4
  
Ruby:

    $ vertx run server.rb -instances 4
 
JavaScript:

    $ vertx run server.js -instances 4
  
### ab test result:
  
    ab -n 100000 -c 100 http://localhost:8080/

  
#### Java:
    Server Hostname:        localhost
    Server Port:            8080

    Document Path:          /
    Document Length:        12 bytes

    Concurrency Level:      100
    Time taken for tests:   6.187 seconds
    Complete requests:      100000
    Failed requests:        0
    Write errors:           0
    Total transferred:      5101683 bytes
    HTML transferred:       1200396 bytes
    Requests per second:    16163.82 [#/sec] (mean)
    Time per request:       6.187 [ms] (mean)
    Time per request:       0.062 [ms] (mean, across all concurrent requests)
    Transfer rate:          805.30 [Kbytes/sec] received

    Connection Times (ms)
                  min  mean[+/-sd] median   max
    Connect:        0    3  35.0      2    1005
    Processing:     0    3   2.7      3     207
    Waiting:        0    2   2.6      2     207
    Total:          0    6  35.1      5    1010

    Percentage of the requests served within a certain time (ms)
      50%      5
      66%      6
      75%      6
      80%      6
      90%      7
      95%      7
      98%      8
      99%      9
     100%   1010 (longest request)



#### Ruby:

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
     
    Document Length:        12 bytes

    Concurrency Level:      100
    Time taken for tests:   6.396 seconds
    Complete requests:      100000
    Failed requests:        0
    Write errors:           0
    Total transferred:      5100816 bytes
    HTML transferred:       1200192 bytes
    Requests per second:    15634.95 [#/sec] (mean)
    Time per request:       6.396 [ms] (mean)
    Time per request:       0.064 [ms] (mean, across all concurrent requests)
    Transfer rate:          778.82 [Kbytes/sec] received

    Connection Times (ms)
                  min  mean[+/-sd] median   max
    Connect:        0    4  43.6      2    1004
    Processing:     0    3   2.6      2     211
    Waiting:        0    2   2.6      2     210
    Total:          0    6  43.7      4    1014

    Percentage of the requests served within a certain time (ms)
      50%      4
      66%      4
      75%      5
      80%      5
      90%      6
      95%      7
      98%      7
      99%      8
     100%   1014 (longest request)
     

     


