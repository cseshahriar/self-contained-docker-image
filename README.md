# self-contained-docker-image
```markdown
# Self-Contained Docker Image for a Static Website

This repository contains a Dockerfile and associated files to create a Docker image for serving a static website using NGINX.

## Steps to Build, Run, and Push the Docker Image

1. **Build the Docker Image**
   Build the Docker image using the following command:
   ```bash
   docker build -t self-container-docker-image .
   ```

2. **Run the Docker Container**
   Run the container and map port `8080` on your host to port `80` in the container:
   ```bash
   docker run -d -p 8080:80 self-container-docker-image
   ```

3. **Tag the Docker Image**
   Tag the image to prepare it for pushing to Docker Hub:
   ```bash
   docker tag self-container-docker-image shosen/self-container-docker-image:latest
   ```

4. **Log In to Docker Hub**
   Log in to your Docker Hub account:
   ```bash
   docker login
   ```

5. **Push the Docker Image to Docker Hub**
   Push the tagged image to Docker Hub:
   ```bash
   docker push shosen/self-container-docker-image:latest
   ```

6. **Pull the Docker Image from Docker Hub**
   To verify the image is accessible, pull it from Docker Hub:
   ```bash
   docker pull shosen/self-container-docker-image:latest
   ```

## Example Usage

Run the container using the pulled image:
```bash
docker run -d -p 8080:80 shosen/self-container-docker-image:latest
```

Visit `http://localhost:8080` in your browser to view the static website.

## Repository Links

- **Docker Hub**: [shosen/self-container-docker-image](https://hub.docker.com/r/shosen/self-container-docker-image)
- **GitHub Repository**: [GitHub Repository Link](#) _(Add your repository link here)_
```

Replace `shosen` and other placeholders with the appropriate values for your setup.