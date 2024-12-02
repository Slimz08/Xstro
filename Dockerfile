FROM node:20-slim
WORKDIR /xstro
RUN apt-get update && \
    apt-get install -y git && \
    npm install -g pm2 && \
    git config --global url."https://".insteadOf git:// && \
    git config --global url."https://github.com/".insteadOf git@github.com:
RUN git clone https://github.com/AstroX11/Xstro.git .
RUN yarn install
EXPOSE 8000
CMD ["npm", "start"]
