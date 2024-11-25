# Use the official Nginx image
FROM node:18-alpine

COPY server.js .

COPY package.json .

ENV PORT=8080
# Expose the port Nginx is serving on
EXPOSE 8080

RUN npm install

# Start Nginx
CMD ["npm", "start", "run"]
