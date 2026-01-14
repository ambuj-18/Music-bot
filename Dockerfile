# Use official Node.js LTS image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all source code
COPY . .

# Set environment to production
ENV NODE_ENV=production

# Start the bot
CMD ["node", "index.js"]
