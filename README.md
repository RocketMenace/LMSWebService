# LMSWebService

A simple HTTP web service built with Python.

## Requirements

- Python 3.13 or higher
- uv (Package manager)

## Installation

Install dependencies using uv:

```bash
uv sync
```

## Running Locally

Run the application directly:

```bash
python app/app.py
```

Or use the Makefile:

```bash
make run
```

The server runs on port 8000 by default. You can change the port by setting the `PORT` environment variable:

```bash
PORT=3000 python app/app.py
```

## Docker

Build the Docker image:

```bash
docker build -t myapp:test .
```

Run the container:

```bash
docker run -p 8000:8000 myapp:test
```

Or use the Makefile commands:

```bash
make build    # Build the image
make run_all  # Start containers
make down     # Stop containers
```

## Development

Format code:

```bash
make format
```

Check code:

```bash
make check
```

## API

The service responds to GET requests with a simple message including the requested path.
