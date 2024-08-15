FROM ghcr.io/ai-dock/linux-desktop:latest

COPY OctaneRender_Studio+_2022_1_1_linux.zip /

# RUN mkdir -p /workspace/home/user/Desktop && unzip /workspace/home/user/OctaneRender_Studio+_2022_1_1_linux.zip -d /workspace/home/user/Desktop

# RUN sudo mkdir /etc/OctaneRender
# COPY otoy_unattended_credentials /etc/OctaneRender/

# RUN mkdir -p /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4

RUN curl -L -o /cudnn_8_0_4_linux.zip https://render.otoy.com/downloads/66/0c/c6/29/cudnn_8_0_4_linux.zip

# RUN cp /cudnn_8_0_4_linux.zip /opt/storage/

# COPY OctaneRender_Studio+_2022_1_1_linux.zip /opt/storage/OctaneRender_Studio+_2022_1_1_linux.zip

COPY provisioning.sh /opt/ai-dock/bin/provisioning.sh

# RUN unzip /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4/cudnn_8_0_4_linux.zip -d /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4/

# RUN rm /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4/cudnn_8_0_4_linux.zip

# RUN rm /workspace/home/user/OctaneRender_Studio+_2022_1_1_linux.zip
