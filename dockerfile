# Use official Python image as base
FROM python:3.11

# Set working directory inside container
WORKDIR /app

# Copy requirements if you have one
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project into container
COPY . .

# Expose port 8000
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
