FROM paman7647/amanpandey:aman
COPY . .
RUN pip install -r requirements.txt
WORKDIR root/Speedo
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
COPY telethon.sh .
COPY pyrogram.sh .
RUN chmod u+x telethon.sh
RUN chmod u+x pyrogram.sh
CMD ["bash", "telethon.sh"]
