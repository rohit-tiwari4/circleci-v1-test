FROM nginx:1.10.1-alpine

# Copy content
COPY            html /usr/share/nginx/html
RUN 		mkdir -p /app
WORKDIR		/app
ADD 		./migrate.sh /app/migrate.sh
RUN chmod +x 	/app/migrate.sh
CMD		[ "/app/migrate.sh" ]

EXPOSE          8080 80
