FROM python:3.11.6

# Set working directory
WORKDIR /root/JARVISROBO

# Copy all project files
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
 && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python3", "-m", "JARVISROBO"]
