import redis
# create  a redis object :
redis = redis.Redis(host='localhost', port=6379)
# to reset redis : 
redis.flushall()
# write a redis variable : 
redis.set("testVariable", 10)
