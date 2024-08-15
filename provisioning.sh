#!/bin/bash
unzip /OctaneRender_Studio+_2022_1_1_linux.zip -d /home/user/Desktop/ 
mkdir -p /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4
unzip /cudnn_8_0_4_linux.zip -d /workspace/home/user/.OctaneRender/thirdparty/cudnn_8_0_4/
curl -o /home/user/Desktop/OctaneRender_Studio+_2022_1_1_linux/script.lua -L "https://render.otoy.com/forum/download/file.php?id=85243&sid=54080bed235fc68b437cfd3c13c164d2"
chown -R user:user /home/user/Desktop/OctaneRender_Studio+_2022_1_1_linux/
sudo -u user bash -c 'export HOME=/home/user && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install'
sudo -u user bash -c 'export HOME=/home/user && mkdir ~/Desktop/kaczka'
sudo -u user echo "s3://${S3_BUCKET}/TU_ZMIEN_SOBIE/" > /home/user/Desktop/kaczka/lokalizacja.txt
sudo -u user echo '#!/bin/bash
S3_URL=$(cat lokalizacja.txt)
echo $S3_URL
aws s3 sync $S3_URL .' > /home/user/Desktop/kaczka/download.sh
sudo -u user echo '#!/bin/bash
S3_URL=$(cat lokalizacja.txt)
echo $S3_URL
aws s3 sync . $S3_URL' > /home/user/Desktop/kaczka/upload.sh
sudo -u user echo '#!/bin/bash
find . -name "*.orbx"|while read fname; do
/home/user/Desktop/OctaneRender_Studio+_2022_1_1_linux/octane "$fname" --script /home/user/Desktop/OctaneRender_Studio+_2022_1_1_linux/script.lua
done' > /home/user/Desktop/kaczka/octane_start.sh
chown -R user:user /home/user/Desktop/kaczka/
sudo -u user bash -c "chmod +x /home/user/Desktop/kaczka/upload.sh"
sudo -u user bash -c "chmod +x /home/user/Desktop/kaczka/download.sh"
sudo -u user bash -c "chmod +x /home/user/Desktop/kaczka/octane_start.sh"