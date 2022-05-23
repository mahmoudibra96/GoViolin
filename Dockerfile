# pulling the golang sutable base image 
FROM golang:1.16-alpine3.13

# setting the working directory inside the container 
WORKDIR /app

#copying the current contents to the container inside the working directory
COPY . .

# bulding our project using go build command 
RUN go build -o main duet.go home.go main.go scale.go

# exposing our container so we can reach our app form port 8080
EXPOSE 8080

# runnig the app 
CMD [ "/app/main" ]