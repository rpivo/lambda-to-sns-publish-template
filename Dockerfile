FROM amazonlinux

RUN yum update -y
RUN yum install -y gcc gcc72-c++ gzip libxml2-dev libxslt-dev make python-pip tar wget
RUN amazon-linux-extras install -y python3.8
RUN python3.8 -m pip install -U pip

# install python dependencies
# RUN pip3 install pytrends --target ./bind-mount/package
