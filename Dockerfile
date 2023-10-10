FROM node:18-slim
WORKDIR /app
COPY index.js package.json ./
COPY views ./views
RUN npm install
EXPOSE 80
ENTRYPOINT ["npm"]
CMD ["run", "start"]