FROM nathanaelrossel/svelte-docker

COPY . /app
WORKDIR /app

RUN npm ci
RUN npm run build

EXPOSE 5173

#ENV NODE_ENV=production

ENTRYPOINT ["node", "build"]
