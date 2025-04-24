# Use a base image
FROM python:3.11-slim

# Set a working directory inside the container
WORKDIR /app

# Copy local files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt --timeout=10000

# Set environment variables (optional)
ENV PORT=5000

# Expose a port
EXPOSE 5000

# Command to run when container starts
CMD ["python", "app.py"]
