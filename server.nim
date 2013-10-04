import jester, strtabs
#import htmlgen
#import asyncio

get "/":
  resp "Hello world! (from Nimrod)"

run()

#var d: PDispatcher = newDispatcher()
#d.register(http = false)
#while true:
#  if not d.poll():
#    echo("All sockets closed.")
#    break