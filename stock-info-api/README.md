# Stock Info API

- Runs rails 5.0 (with --api) as the backend to emberjs

```
bin/setup
bundle exec rake exchange:import_all
bundle exec rails s # keep note of address, it will be used as a proxy to the front end app
```

## Improvement
* lowercase index on company names (added)
* redis cache with short ttl to prevent duplicate yahoo requests
* rate limit
* tests
