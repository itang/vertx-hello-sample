import jester, strtabs, sockets
#import htmlgen
#import asyncio

get "/":
  resp "Hello world! (from Nimrod)"

run(port = TPort(8080))

#var d: PDispatcher = newDispatcher()
#d.register(http = false)
#while true:
#  if not d.poll():
#    echo("All sockets closed.")
#    break