# From the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy 
COPY . .

# Run
RUN npm install
RUN npm run build

# Expose port 3000
EXPOSE 3000

# start node.js
CMD [ "npm", "start" ]