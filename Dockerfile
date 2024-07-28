# For original file: https://github.com/mage-ai/docker/blob/master/Dockerfile
# For more info: https://docs.mage.ai/development/project/setup 
FROM node:20-alpine



WORKDIR /home/src/app

# WARNING NOTE:
# This code below has been CHANGED because Autoquotes Github Repo Structure is DIFFERENT THAN Mage Default Project Structure
# "COPY ${PROJECT_NAME} ${PROJECT_NAME}" ---> "COPY requirements.txt ${PROJECT_NAME}/"
COPY package*.json ./

# Set the USER_CODE_PATH variable to the path of user project.
# The project path needs to contain project name.
# Replace [project_name] with the name of your project (e.g. demo_project)

# verifies the right Node.js version is in the environment
RUN node -v # should print `v20.16.0`
# verifies the right npm version is in the environment
RUN npm -v # should print `10.8.1`
# Install node libraries
RUN npm install
#COPY . .