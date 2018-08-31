FROM stack-2.sinocbd.local:5000/ubuntu:artful
MAINTAINER Zou Tao <zout@sinocbd.com>

RUN mkdir -p app
WORKDIR /app
ENV HOME /app
ENV LOGNAME=root
ENV USER=root
ADD . /app/


RUN pip3 install -r requirements.txt --upgrade --index-url https://pypi.tuna.tsinghua.edu.cn/simple/ \
    && apt-get install python3 sudo make -y \
    && sudo apt-get install --reinstall make -y

ENTRYPOINT ["python3"]
CMD ["application.py"]

