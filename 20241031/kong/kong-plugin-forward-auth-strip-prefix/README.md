# forward-auth-strip-prefix
A Kong plugin that make GET auth request and strip path prefix before proxying the original request.

## Description
forward-auth-strip-prefix is a plugin intergrated by both [kong-auth-request](https://github.com/ascho/kong-auth-request) and [path-prefix](https://github.com/alexashley/kong-plugin-path-prefix).

Plugin takes GET http request with Authorization header and retrieve the information from the request to set the header `X-Forwarded-Method`, `X-Forwarded-Uri` and `X-Forwarded-Prefix`, and send it to auth service (url is taken from plugin configuration), then if auth response status code is 200 and `config.path_prefix_enabled` is true, then plugin strips the path prefix which is specified by `config.path_prefix` and routes original request to upstream service with headers (header names are taken from plugin configuration) from auth response.   
If auth response code is greater than 299 then auth response is returned to client and origin request is not passed to upstream.

## Installation

Pack plugin by luarocks package manager.  
```
$luarocks make
$luarocks pack kong-plugin-forward-auth-strip-prefix
```

Output
```kong-plugin-forward-auth-strip-prefix-0.1.0-1.all.rock```

Add `kong-plugin-forward-auth-strip-prefix` to Kong by environment variable
```KONG_PLUGINS=bundled,forward-auth-strip-prefix```   

or add it to kong.conf:  
```plugins = bundled,forward-auth-strip-prefix```

## KongPlugin
***Note***
  - Both the option `auth_enabled` and `path_prefix_enabled` are configured to true by default. It means that you do not need to config `auth_enabled` and `path_prefix_enabled` explicitly.
  - The `auth_uri`, `auth_response_headers_to_forward` and `origin_request_headers_to_forward_to_auth` also have the default value, you can config each of them explictly in the configuration to override it.
```
---
apiVersion: configuration.konghq.com/v1
config:
  auth_enabled: true
  auth_response_headers_to_forward:
  - x-auth-user-info
  auth_uri: http://auth-service.app.svc.cluster.local:8088/v1/auth
  path_prefix_enabled: true
  path_prefix: "/operation-service/"
  origin_request_headers_to_forward_to_auth:
  - authorization
  - x-sensetime-sso-client-id
kind: KongPlugin
metadata:
  annotations:
    meta.helm.sh/release-name: kong-default
    meta.helm.sh/release-namespace: ingress
  generation: 1
  labels:
    app.kubernetes.io/managed-by: Helm
  name: operation-service-forward-auth-strip-prefix
  namespace: app
plugin: forward-auth-strip-prefix
```

## Ingress
```
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: operation-service
  namespace: app
  labels:
    app.kubernetes.io/instance: operation-service
    app.kubernetes.io/managed-by: Helm
    app.kubernetes.io/name: operation-service
    helm.sh/chart: operation-service-1.1.20230417123202_dev
  annotations:
    kubernetes.io/ingress.class: "kong-openapi"
    configuration.konghq.com: https-strict-true
    plugins.konghq.com: api-log,api-block,operation-service-forward-auth-strip-prefix
spec:
  rules:
    - http:
        paths:
          - path: /operation-service
            pathType: Prefix
            backend:
              service:
                name: operation-service
                port:
                  number: 8088
```

## Configuration

```
curl -X POST \
--url "http://localhost:8001/services/echo-service/plugins" \
--data "name=forward-auth-strip-prefix" \
--data "config.path_prefix=/echo-services/"
--data "config.auth_uri=http://auth-service.app.svc.cluster.local:8081/v1/auth" \
--data "config.auth_response_headers_to_forward[]=x-auth-user-info"
--data "config.origin_request_headers_to_forward_to_auth[]=authorization"
```

config parameter | description
-----------------|--------------
config.auth_enabled| If it is true, then the plugin will make a HTTP Get request with Authorization. The default value is true.
config.auth_uri  | Plugin make a HTTP GET request with Authorization header to this URL before proxying the original request
config.path_prefix_enabled | If it is true, then the plugin will enable the ability to strip the path prefix specified by the field `path_prefix`. The default value is true.
config.path_prefix| If auth request was successful then plugin strips the path prefix specified by path_prefix and routes the request to upstream.
config.auth_response_headers_to_forward | If auth request was successful then plugin takes header names from auth_response_headers_to_forward collection, then finds them in auth response headers and adds them into origin request before proxying it to upstream.
config.origin_request_headers_to_forward_to_auth | Origin request headers to pass to auth uri