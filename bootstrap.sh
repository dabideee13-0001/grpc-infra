#!/bin/bash

mkdir -p services && cd services

echo "📦 Cloning services..."
git clone git@github.com:leon-org/grpc-hello.git
git clone git@github.com:leon-org/grpc-goodbye.git
git clone git@github.com:leon-org/grpc-api-gateway.git

for service in */; do
  echo "🔁 Initializing submodule in $service"
  cd "$service"
  git submodule update --init --recursive
  cd ..
done

echo "✅ Done setting up services!"
