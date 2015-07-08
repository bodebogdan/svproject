#$redis = Redis.new(:driver => :hiredis)
uri = ENV["REDISTOGO_URL"] || "redis://localhost:6379/"
REDIS = Redis.new(:url => uri)
