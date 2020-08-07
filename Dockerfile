# Docker Image which is used as foundatioon to create
# a custom Docker Image with this Dockerfile
FROM node:10

# A directory within the virtualized Docker environment 
# Becomes more relevant when using Docker compose later
WORKDIR /src/

# Copies package.json and package-lock.json to Docker environment 
COPY package*.json ./

# Install all node packages 
RUN npm install 

# Copies everything over to Docker environment 
COPY . .

# Uses port which is used by the actual application, usually creat-react-app
# comes by default 3000
EXPOSE 3000

# Finally runs the applications 
CMD ["npm", "start"]