#Creating a temporary container of type nginx for launching curl

FROM nginx:latest

# Copy the script to the container
COPY script_di_creazione_modello.sh /usr/local/bin/

# Run the script to create the index patter
CMD ["/usr/local/bin/script_di_creazione_modello.sh"]