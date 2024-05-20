FROM svelte-docker

COPY . /app
WORKDIR /app

RUN npm ci --omit dev
RUN npm run build

EXPOSE 5173

#ENV NODE_ENV=production

RUN node build
