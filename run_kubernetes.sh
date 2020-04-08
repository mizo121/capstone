# dockerpath=<>
dockerpath = mizo121/capstone
version = 1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacitycapstone --image=docker.io/$dockerpath:$version

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacitycapstone 8000:80
