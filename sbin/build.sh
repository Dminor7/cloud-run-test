pack build \
    --builder gcr.io/buildpacks/builder:v1 \
    --env GOOGLE_FUNCTION_SIGNATURE_TYPE=http \
    --env GOOGLE_FUNCTION_TARGET=hello \
    --env GOOGLE_FUNCTION_SOURCE=./cloud_run_test/main.py \
    my-first-function
