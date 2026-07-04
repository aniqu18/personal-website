FROM nginx:alpine

# Copy site files
COPY index.html /usr/share/nginx/html/index.html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Non-root user for security
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
