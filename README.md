
# Instructions

## stock-info-api

- Runs rails 5.0 (with --api) as the backend to emberjs

```
bin/setup
bundle exec rake exchange:import_all
bundle exec rails s # keep note of address, it will be used as a proxy to the front end app
```

### Improvement
* lowercase index on company names, check migrations [added]
* redis cache with short ttl to prevent duplicate yahoo requests
* rate limit
* tests


## stock-info-client

```
Run rails server for project `stock-info-api`

npm install
bower install

ember s --proxy localhost:3000 # default rails port

```

### Notes

* My first front-end app:
* App successfully connects to rails backend, can be confirmed with ember chrome extension.
* Set up autocomplete search
* Although Price History endpoint is working, it is not implemented on front end app.
