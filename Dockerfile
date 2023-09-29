# Use Python 3.6 or later as a base image
FROM node:latest
# Copy contents into image
COPY . .
# Install npm
RUN npm install
# Expose the correct port
EXPOSE 5000	
# Create an entrypoint
ENTRYPOINT ["npm", "start"]