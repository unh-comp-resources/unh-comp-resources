###############
# Build Stage #
###############
FROM razonyang/hugo:exts as builder

# Base URL
ARG HUGO_BASEURL=http://localhost:8080
ENV HUGO_BASEURL=${HUGO_BASEURL}

# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo

###############
# Final Stage #
###############
FROM razonyang/hugo:nginx

COPY --from=builder /src/public /site

# Optionally, set the NGINX configuration if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
