# FindmyPersonal

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To start your Phoenix server Container-Prod:

  * configure a `.env` with:
    * DATABASE_URL
    * SECRET_KEY_BASE
    * OPITIONAL: POOL_SIZE and PORT
  * run `docker build -t IMAGE_NAME:TAG`
  * run `docker run --env-file .env -p 8082:4000 IMAGE_NAME:TAG`


Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
