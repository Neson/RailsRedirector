# RailsRedirector

A simple Rails app that redirects user to different sites based on the request path.

## Usage

This app can be configured via environment variables.

It takes each `REDIRECT_REGEXP_n` environment variable (`n` can be 1 up to 100) as regexp to match the request full path, and redirects them to `REDIRECT_URL_n`.

### New Relic Monitoring

Environment variables: `NEW_RELIC_LICENSE_KEY` and `NEWRELIC_APP_NAME` can be set to use New Relic Monitoring.
