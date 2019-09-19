FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
# Copy app.py to the working directory
COPY app.py /app/
COPY model_data/ /app/model_data/
COPY requirements.txt /app/

## Step 3:
#hadolint ignore=DL3013
	RUN pip install --upgrade pip && pip install -r /app/requirements.txt

# Install packages from requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "/app/app.py"]

