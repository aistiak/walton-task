from vuejs/ci
WORKDIR /app
CMD npm install 
EXPOSE 8080
CMD npm run serve 
