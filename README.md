
# Instructions

## stock-info-api

```

cd stock-info-api
bin/setup
bundle exec rake exchange:import_all

# keep note of address, it will be used as a proxy to the front end app
bundle exec rails s
```

## stock-info-client

```
# Open up a new tab

cd stock-info-client/
npm install
bower install

ember s --proxy http://localhost:3000 # default rails port

open http://localhost:4200 # default emberjs
```

### Notes

* This is my first front-end app, my experience is mostly working on the backend. This was fun to do and learned a ton :).
* Autocomplete works.
* Although Price History endpoint is functional, it is not implemented on front end app.
* Optimized migration for performance improvement.
* Added notes on rails server projects for possible feature improvements and recommendations.
