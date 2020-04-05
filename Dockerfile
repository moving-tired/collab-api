# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:latest

ENV PORT ${PORT:-4000}
ENV MIX_ENV prod
ENV HOME /app

# Create app directory and copy dependencies
WORKDIR $HOME
COPY mix.* ./

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force 

# Install rebar (Erlang build tool)
RUN mix local.rebar --force

# Instal dependencies
RUN mix deps.get --only prod

# Compile depencencies project
RUN mix deps.compile

#Compile project
RUN mix compile
COPY . .

# Migrate Database
#RUN mix ecto.setup

# Expose port
EXPOSE $PORT

# Compile the project
CMD mix phx.server