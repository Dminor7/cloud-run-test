FROM python:3.8.0-slim

# Copy local code to the container image.
ENV APP_HOME /app
ENV PYTHONUNBUFFERED TRUE
ENV FUNCTION_TARGET hello
ENV FUNCTION_SOURCE ./cloud_run_test/main.py

WORKDIR $APP_HOME
COPY . .

# Install production dependencies.
RUN pip install -r requirements.txt

# Run the web service on container startup.
CMD exec functions-framework