FROM base-shop-api

COPY data/source/flask-shop.tar.gz /root/shop/source/

# conf
RUN mkdir -p /app/api/flask && \
    /root/.pyenv/versions/api/bin/pip install -r /root/shop/source/requirements.txt && \
    rm -rf /root/shop/conf/*

COPY data/conf /root/shop/conf
RUN cp /root/shop/conf/etc/supervisord.d/* /etc/supervisord.d/ && \
    cp /root/shop/conf/etc/supervisord.conf /etc/supervisord.conf && \
    cp /root/shop/run_tool.sh /

ENTRYPOINT ["/bin/bash"]
CMD ["/run_tool.sh"]
