#!/bin/bash
unzip /OctaneRender_Studio+_2022_1_1_linux.zip -d /home/user/Desktop/ 
mkdir -p /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4
unzip /cudnn_8_0_4_linux.zip -d /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4/
chown -R user:user /home/user/Desktop/OctaneRender_Studio+_2022_1_1_linux/
sudo -u user bash -c 'export HOME=/home/user && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install'