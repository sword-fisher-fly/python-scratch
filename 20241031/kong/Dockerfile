FROM kong:2.3.3
USER root
RUN mkdir /usr/local/share/lua/5.1/kong/plugins/forward-auth-strip-prefix
COPY ./kong-plugins/kong-plugin-forward-auth-strip-prefix/src/* /usr/local/share/lua/5.1/kong/plugins/forward-auth-strip-prefix

USER kong

