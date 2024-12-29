# Stage 1: Build the Vue app
FROM node:23-alpine3.20 AS builder

WORKDIR /app

COPY package*.json ./

# or yarn install --production --frozen-lockfile
RUN npm ci --omit=dev --production=false

COPY . .

# or yarn build
RUN npm run build-only

# Stage 2: Serve the built app with Nginx
FROM nginx:alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]