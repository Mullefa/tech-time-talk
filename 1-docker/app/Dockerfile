# Sets the base image for subsequent instructions.
# The base image used in this Dockerfile is public:
# https://hub.docker.com/_/golang
FROM golang:1.13

WORKDIR /ping-pong
COPY ping-pong .

RUN go build -o main .

# informs Docker that the container listens on the specified network ports at runtime ...
# The EXPOSE instruction does not actually publish the port.
# It functions as a type of documentation between the person who builds the image and the person who runs the container,
# about which ports are intended to be published
EXPOSE 8080

RUN echo Starting the Go service...
CMD ["./main"]
