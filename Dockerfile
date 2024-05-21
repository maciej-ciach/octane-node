FROM ghcr.io/ai-dock/linux-desktop:latest

COPY OctaneRender_Studio+_2022_1_1_linux.zip /home/user

RUN unzip /home/user/OctaneRender_Studio+_2022_1_1_linux.zip -d /home/user/Desktop/

# RUN sudo mkdir /etc/OctaneRender
# COPY otoy_unattended_credentials /etc/OctaneRender/

RUN mkdir -p /home/user/.OctaneRender/thirdparty/cudnn_8_0_4

RUN curl -L -o /home/user/.OctaneRender/thirdparty/cudnn_8_0_4/cudnn_8_0_4_linux.zip https://render.otoy.com/downloads/66/0c/c6/29/cudnn_8_0_4_linux.zip

RUN unzip /home/user/.OctaneRender/thirdparty/cudnn_8_0_4/cudnn_8_0_4_linux.zip -d /home/user/.OctaneRender/thirdparty/cudnn_8_0_4/

RUN rm /home/user/.OctaneRender/thirdparty/cudnn_8_0_4/cudnn_8_0_4_linux.zip

RUN rm /home/user/OctaneRender_Studio+_2022_1_1_linux.zip
