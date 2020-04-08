dockerpath = mizo121/capstone
# Step 1:
# Build image and add a descriptive tag
docker build --tag=$dockerpath .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run my custom app
docker run -p 3000:80 $dockerpath
