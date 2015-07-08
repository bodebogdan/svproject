#$redis = Redis.new(:driver => :hiredis)
uri = ENV["redis://redistogo:16d5f4417a1c4e770a9ce19bffcf28d6@perch.redistogo.com:9540/ "] || "redis://localhost:6379/"
REDIS = Redis.new(:url => uri)
