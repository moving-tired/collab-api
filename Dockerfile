# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:1.9.1-alpine

ENV PORT=${PORT:-4000}
ENV MIX_ENV=prod
ENV HOME=/app

# Create app directory and copy dependencies
WORKDIR $HOME
COPY . $HOME

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
# Install rebar (Erlang build tool)
RUN mix local.hex --force && mix local.rebar --force && mix deps.get --only prod \
    && mix deps.compile && mix compile

# Migrate Database
#RUN mix ecto.setup

# Expose port
#EXPOSE $PORT

# Compile the project
CMD mix phx.server