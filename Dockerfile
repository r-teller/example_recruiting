FROM nginx
RUN apt-get update
RUN apt-get install --no-upgrade git -y

RUN mkdir -p /var/git && mkdir -p /var/www \
    && git clone https://github.com/r-teller/example_recruiting.git /var/git/example_recruiting \
    && cp -r /var/git/example_recruiting/html /var/www \
    && cp -r /var/git/example_recruiting/nginx/nginx.conf /etc/nginx/nginx.conf
