# Tensorflow Model Server Docker Image

You can make your Tensorflow model a Docker image by making changes to Dockerfile.

Details at the [Wiki](https://github.com/ajiybanesij/Tensorflow-Model-Server-Docker-Kubernetes/wiki#tensorflow-model-server-converting-docker-image).

## Requirement

  Install [Docker](https://docs.docker.com/install/)
  
  Install [Kubernetes](https://vitux.com/?s=kubernetes)

## Creation of Docker Image

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
  
 ## Deploy Kubernetes
  
### 1. Step 
  ```sh
    $ cd kubernetesFiles
  ```
  
### 2. Step 
  ```sh
    $ kubectl apply –f deployment.yaml
    $ kubectl apply –f service.yaml
  ```
