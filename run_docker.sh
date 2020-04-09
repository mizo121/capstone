dockerpath=mizo121/capstone
# Step 1:
# Build image and add a descriptive tag
sudo docker build --tag=$dockerpath .

# Step 2: 
# List docker images
sudo docker image ls

# Step 3: 
# Run my custom app
sudo docker run -p 8000:80 $dockerpath
