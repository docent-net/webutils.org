FROM registry.fedoraproject.org/fedora-minimal
LABEL author="Maciej Lasyk <maciek@lasyk.info>"

RUN microdnf -y install lighttpd

COPY frontend /var/www/lighttpd
RUN chown lighttpd:lighttpd /var/www/lighttpd -R && \
    mkdir /run/lighttpd && chown lighttpd:lighttpd /run/lighttpd

CMD ["lighttpd", "-f", "/etc/lighttpd/lighttpd.conf", "-D"]