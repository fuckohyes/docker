# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM daocloud.io/centos:7
MAINTAINER wdzaw@gmail.com

# The RUN instruction will execute any commands
# Adding HelloWorld page into Nginx server
RUN echo "Hello World DaoCloud!" > /tmp/docker

# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 80

# The CMD instruction provides default execution command for an container
# Start Nginx and keep it from running background
