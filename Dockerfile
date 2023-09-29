# Use Python 3.6 or later as a base image
FROM node:latest
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN npm Install
# Set YOUR_NAME environment variable
ENV YOUR_NAME sujana
# Expose the correct port
EXPOSE 5000	
# Create an entrypoint
ENTRYPOINT ["npm", "start"]