##### Dockerfile #####
## build stage ##
FROM node:18.18-alpine as build

WORKDIR /21
COPY . .
RUN npm install
RUN npm run build

# ## run stage ##
# FROM nginx:alpine

# COPY --from=build /21/build /usr/share/nginx/html

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]