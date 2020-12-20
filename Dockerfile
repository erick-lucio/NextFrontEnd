#pegando img do node
FROM node:15.4.0
LABEL CRIADOR="ericklucio-suv@hotmail.com"

ENV PORT 3000
ENV project /usr/src/project

# Create app directory
RUN mkdir -p ${project}
WORKDIR ${project}

# Installing dependencies
COPY package*.json ${project}
RUN npm install

# Copying source files
COPY . ${project}

# Building app
RUN npm run build

#EXPOSE 3000 Nao e usado pelo heroku

# Running the app
CMD "npm" "start"

