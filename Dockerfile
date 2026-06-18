# ─────────────────────────────────────────────────────────────
#  Ministry of Planning — CDWP & ECNEC Dashboard
#  Docker Image — Nginx Static Server
#  Docker Hub: YOUR-DOCKERHUB-USERNAME/ministry-dashboard
# ─────────────────────────────────────────────────────────────

# Stage 1: Use official lightweight Nginx image
FROM nginx:1.27-alpine

# Maintainer info
LABEL maintainer="Your Name <your.email@example.com>"
LABEL description="Ministry of Planning Pakistan — CDWP & ECNEC Interactive Dashboard 2025-26"
LABEL version="1.0.0"
LABEL org.opencontainers.image.title="Ministry Dashboard"
LABEL org.opencontainers.image.description="Government of Pakistan — CDWP & ECNEC Annual Review Dashboard"
LABEL org.opencontainers.image.source="https://github.com/YOUR-USERNAME/ministry-dashboard"

# Remove default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy dashboard files to nginx serving directory
COPY index.html /usr/share/nginx/html/index.html
COPY index-protected.html /usr/share/nginx/html/index-protected.html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Create a simple health check endpoint
RUN echo '{"status":"healthy","service":"ministry-dashboard","version":"1.0.0"}' \
    > /usr/share/nginx/html/health.json

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost/health.json || exit 1

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
