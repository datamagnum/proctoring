FROM python:3.8.0

# Update package lists
RUN apt-get update

# Install libgl1-mesa-glx
RUN apt-get install -y libgl1-mesa-glx

# Update package lists and install required dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    wget \
    && rm -rf /var/lib/apt/lists/*

COPY . /opt/app
WORKDIR /opt/app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python","app.py"]