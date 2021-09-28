# Testing Cloud Run via Function Framework

## Functions Framework for Python
An open source FaaS (Function as a service) framework for writing portable Python functions -- brought to you by the Google Cloud Functions team.

The Functions Framework lets you write lightweight functions that run in many different environments, including:

- Google Cloud Functions
- Your local development machine
- Cloud Run and Cloud Run for Anthos
- Knative-based environments

## Quickstart: Hello, World on your local machine
```python
def hello(request):
    return "Hello world!"
```

### Quickstart: Build a Deployable Container

1. Install [Docker](https://store.docker.com/search?type=edition&offering=community) and the [`pack` tool](https://buildpacks.io/docs/install-pack/).

1. Build a container from your function using the Functions [buildpacks](https://github.com/GoogleCloudPlatform/buildpacks):

        bash sbin/build.sh
1. Start the built container:

        bash sbin/run.sh
        # Output: Serving function...

1. Send requests to this function using `curl` from another terminal window:

        curl localhost:8080
        # Output: Hello World!
