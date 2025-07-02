# Step 1: Create basic Elixir app with API
https://saswat.dev/build-a-simple-rest-api-with-elixir-part-1/

- To create an empty mix project`mix new rest_api --sup`

```bash
mix deps.get
mix deps.compile
mix release
./_build/dev/rel/rest_api/bin/rest_api start #launch the release
```

# Step 2: Create a Docker image
```bash
docker build . -t rest_api; docker run -p 8080:8080 rest_api # build the image and run the container
curl localhost:8080 # request the server
```