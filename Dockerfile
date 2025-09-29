# Use Node 18 Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose the port your app listens on
EXPOSE 8080

# Run the app
CMD ["node", "src/index.js"]
