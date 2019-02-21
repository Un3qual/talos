# Talos Backend


The primary backend umbrella app for Talos.

## Docker

Docker is serving two purposes in this app. In development it ensures that
everyone working on Talos is using the same version of Elixir, Postgres, 
Redis, ElasticSearch, etc. In production, it's used with Kubernetes for 
clustering and other OTP goodness. 

## Organization

`TL` (the top level module) is an Elixir Umbrella application wrapping several
Elixir/OTP apps. Each app is intended to manage a particular domain concern.

### `TL.DB`
This OTP app is the ecto app for working with Postgres. 
[README](/apps/tl_db/)

### `TL.Web`
The web interface for everything.
[README](/apps/tl_web/)

### `TL.RedditScraper`
Scrapes reddit for posts (TODO). [README](/apps/reddit_scraper/)

### `TL.Poster`
Posts stuff (TODO). [README](/apps/poster/)


### Configuration

All apps should run by default without config changes. Each app details it's
own config options in it's README.

### Commands

* To start the web server run `mix phx.server`.
* To start a console run `iex -S mix`
* To start a console and webserver run `iex -S mix phx.server`
* To run tests `mix test`
* To rebuild the database `mix do ecto.drop, ecto.create, ecto.migrate`

