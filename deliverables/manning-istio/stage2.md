# Exposing Your Application on an HTTP Port

> The deliverable for this milestone is the output of the command curl http://$INGRESS/wrongpath, the corresponding access log captured from the ingress gateway pod in JSON format, and the explanation of whether the request is proxied by the ingress gateway to the frontend service or not based on the access log message.

```bash
$  curl http://$INGRESS/abc
404 page not found
```

```json
{ 
  "downstream_local_address": "172.17.0.3:8080",
  "user_agent": "curl/7.68.0",
  "route_name": null,
  "response_code_details": "via_upstream",
  "protocol": "HTTP/1.1",
  "method": "GET",
  "upstream_local_address": "172.17.0.3:51630",
  "request_id": "4ba825ec-7955-9e3d-9dc7-942c38c517f0",
  "response_code": 404,
  "upstream_host": "172.17.0.16:8080",
  "bytes_received": 0,
  "requested_server_name": null,
  "response_flags": "-",
  "x_forwarded_for": "172.17.0.1",
  "upstream_service_time": "1",
  "bytes_sent": 19,
  "downstream_remote_address": "172.17.0.1:35535",
  "upstream_transport_failure_reason": null,
  "upstream_cluster": "outbound|80||frontend.online-boutique.svc.cluster.local",
  "path": "/abc",
  "duration": 1,
  "start_time": "2021-09-12T05:44:48.369Z",
  "authority": "10.103.20.194",
  "connection_termination_details": null
}
```

