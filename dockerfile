FROM elixir:1.18-otp-28
RUN mkdir /app
WORKDIR /app
COPY rest_api/mix.exs .
COPY rest_api/mix.lock .
RUN mix deps.get
RUN mix deps.compile
COPY rest_api/lib ./lib
RUN mix release
CMD ["_build/dev/rel/rest_api/bin/rest_api", "start"]