---
title: Hugo
date: March 2024
author: Kalyan
updated: April 2, 2024
---
## Prerequisites for Testing Your Site Locally

To test your Hugo site locally, you'll need the following:

- [Hugo](https://gohugo.io/) installed on your local machine. You can find installation instructions for various operating systems on the [official Hugo website](https://github.com/gohugoio/hugo/releases).
- A basic understanding of the command line interface (CLI) to run Hugo commands.
- Optionally, Docker installed on your local machine if you choose to use it for local testing.


## Introduction to Hugo

[Hugo](https://gohugo.io/) is a fast and modern static site generator written in Go. With its amazing speed and flexibility, Hugo makes building websites simple again.

### Why Hugo?

- **Speed:** Hugo is incredibly fast, rendering content in milliseconds.
- **Flexibility:** Hugo supports multiple content types, taxonomies, and shortcodes, allowing for highly customizable websites.
- **Extensibility:** Hugo's architecture allows for easy integration with other tools and services, making it a powerful choice for developers.

## Getting Started with Hugo

### Installation

To get started with Hugo, you'll need to install Hugo on your local machine. You can find installation instructions for various operating systems on the [official Hugo website](https://github.com/gohugoio/hugo/releases).

### Hugo Basics

#### Hugo Themes

Hugo offers a wide range of themes to choose from, allowing you to customize the look and feel of your website with ease. You can find Hugo themes on the [Hugo Themes website](https://themes.gohugo.io/).

#### Hugo Commands

Here are some basic Hugo commands to help you get started:

- `hugo version`: Check if Hugo is installed.
- `hugo server`: Start a local development server.
- `docker pull hello-world`: Ensure Docker is installed correctly.
- `docker scout quickview hello-world`: View the log after pulling the hello-world image.
- `docker build -t unh-comp-resources .`: Build a Docker image for your Hugo site.
- `docker run -p 8080:80 unh-comp-resources`: Run the Docker container for your Hugo site.

**Note:** You can run these commands in Git Bash or PowerShell, although Git Bash is preferred.

### Guidelines for Local Testing with Docker

Hugo can be tested locally using Docker to simulate the production environment. Follow these guidelines:

1. Install Docker on your local machine.
2. Clone your Hugo project repository.
3. Navigate to the project directory in your terminal.
4. Run the provided Docker commands to start a local Hugo server.

Your Hugo site will be accessible at [http://localhost:8080](http://localhost:8080).

### Hosting on GitHub

You can host your Hugo website on GitHub Pages for free. Here's how:

1. Create a new repository on GitHub named `<username>.github.io`, where `<username>` is your GitHub username.
2. Push your Hugo project to the newly created repository.
3. In your repository settings, navigate to the "Pages" section.
4. Choose the branch you want to publish (typically `main` or `master`) and select the folder containing your Hugo site's static files (usually `/public`).
5. Set up a GitHub Action workflow for building and deploying your Hugo site.
6. Once configured, your Hugo website will be automatically built and deployed to GitHub Pages whenever you push changes to your repository.

### Hugo Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Hugo Themes](https://themes.gohugo.io/)
- [Hugo Forums](https://discourse.gohugo.io/)
- [Hugo GitHub Repository](https://github.com/gohugoio/hugo)
