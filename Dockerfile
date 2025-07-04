# Use official Python 3.10 image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy all project files
COPY . .

# Expose port
EXPOSE 8000

# Start the FastAPI app
CMD ["uvicorn", "Main:app", "--host", "0.0.0.0", "--port", "8000"]
