# dockerpath=<your docker ID/path>
dockerpath=mizo121/capstone
version=1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
imageId = $(docker images -q $dockerpath:latest)
docker login --username=mizo121
docker tag $imageId $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath