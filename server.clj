(require '[vertx.http :as http])

(defn req-handler [req]
  (let [resp (http/server-response req)]
    (doto resp
      #_(http/put-header "Content-Type" "text/html; charset=utf-8")
      (http/end "Hello world! (from clojure)"))))

(-> (http/server)
    (http/on-request req-handler)
    (http/listen 8080 "localhost" (println "Starting Http Server on localhost:8080")))
