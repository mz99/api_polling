@redis = Redis::Namespace.new("meetup_api", :redis => Redis.new)
