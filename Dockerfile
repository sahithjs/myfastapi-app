# Step 1: Use an official Python image as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy requirements.txt and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the FastAPI app (main.py) into the container
COPY . /app

# Step 5: Expose the port FastAPI will run on
EXPOSE 8000

# Step 6: Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
