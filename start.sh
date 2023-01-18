#!/bin/bash
echo "Git: Checkout code"
git pull
echo "Docker: Build image"
docker build -t jenkins:jcasc .