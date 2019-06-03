# What image do you want to start building on?

# Make a folder in your image where your app's source code can live

# Tell your container where your app's source code will live

# What source code do you what to copy, and where to put it?

# Does your app have any dependencies that should be installed?

# What port will the container talk to the outside world with once created?

# How do you start your app?

FROM node:8.15-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY . /src/app
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "docker" ]