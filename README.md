# Tensorflow Model Server Docker Image

You can make your Tensorflow model a Docker image by making changes to Dockerfile.

## Requirement

  Install [Docker](https://docs.docker.com/install/)

## Usage

### 1. Step 
  - Copy the model file into the 'models' folder.


### 2. Step 
  - Replace MODEL_NAME in Dockerfile with your own model name.

### 3. Step (This step may take some time!)
  ```sh
    $ docker build -t IMAGE_NAME .
  ```

### 4. Step
  ```sh
    docker run -p 8501:8501 IMAGE_NAME  
  ```

### 5. Step
  - You can use the url.
  ```sh
    localhost:8501
  ``` 
