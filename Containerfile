FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

COPY sleep-forever.sh /usr/local/bin/sleep-forever.sh
RUN chmod +x /usr/local/bin/sleep-forever.sh

CMD ["/usr/local/bin/sleep-forever.sh"]
