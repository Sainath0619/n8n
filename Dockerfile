# Dockerfile for n8n
FROM n8nio/n8n:latest

# Optional: copy custom config or workflows
# COPY ./local_files /home/node/.n8n

EXPOSE 5678
CMD ["n8n"]
