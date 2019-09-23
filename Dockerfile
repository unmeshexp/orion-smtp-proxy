FROM haproxy:1.9
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 1587
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]