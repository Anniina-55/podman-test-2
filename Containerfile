# Base image (Python runtime)
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency definition first (better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app.py .

# Expose application port (documentation purpose only)
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
