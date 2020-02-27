# gtk3-docker

Run native gtk3+ applications inside a container via the browser

![alt](screen.png)

## Instructions

Build image locally

`docker build -t ubuntu-gtk3 .`
`docker run --rm -p 8085:8085 ubuntu-gtk3`

Open `http://localhost:8085`

## Description

This container is based on ubuntu. It sets up the environment to use the BROADWAY html5 display for rendering applications. A small gtk3+ "launcher" application is used as the entrypoint.