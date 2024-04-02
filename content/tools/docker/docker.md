---
title: Docker
date: April 2024
author: Kalyan
updated: April 2, 2024
---

## Introduction to Docker

Docker is a platform for developing, shipping, and running applications in containers. Containers allow developers to package an application with all of its dependencies into a standardized unit for software development.

### Why Docker?

- **Consistency:** Docker ensures consistency across environments, from development to production.
- **Isolation:** Containers isolate applications from the underlying infrastructure, ensuring that they run consistently regardless of where they are deployed.
- **Efficiency:** Docker enables lightweight and portable containers, optimizing resource utilization and speeding up the development process.
- **Scalability:** Docker makes it easy to scale applications horizontally by adding or removing container instances as needed.

## Getting Started with Docker

### Installation

To get started with Docker, you'll need to install Docker Engine on your local machine. You can find installation instructions for various operating systems on the [official Docker website](https://docs.docker.com/get-docker/).

### Docker Basics

#### Docker Images

A Docker image is a lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, and dependencies. You can pull existing images from Docker Hub or create your own custom images using Dockerfiles.

#### Docker Containers

A Docker container is a running instance of a Docker image. Containers are isolated from each other and from the host system, ensuring that applications run consistently regardless of the environment.

#### Docker Compose

Docker Compose is a tool for defining and running multi-container Docker applications. With Docker Compose, you can define a multi-container application in a single YAML file and use a single command to start, stop, and manage the entire application stack.

### Docker Commands

#### Basic Commands

- `docker pull <image>`: Pull an image from a registry.
- `docker run <image>`: Run a container based on an image.
- `docker ps`: List running containers.
- `docker stop <container>`: Stop a running container.

#### Advanced Commands

- `docker build <path/to/Dockerfile>`: Build a Docker image from a Dockerfile.
- `docker-compose up`: Start a multi-container application defined in a Docker Compose file.
- `docker exec -it <container> <command>`: Execute a command inside a running container.

**Note:** You can run these commands in Git Bash or PowerShell, although Git Bash is preferred.

## Docker Resources

- [Docker Documentation](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)
