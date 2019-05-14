## Node Exporter

Relable IP with Static Value:

```
scrape_configs:
  - job_name: 'node_n1'
    static_configs:
    - targets:
        - '10.20.30.40:9100'
      labels:
        cloud_provider: 'amazon'
        my_hostname: 'foo.domain.com'
    relabel_configs:
    - source_labels: [__address__]
      regex: '.*'
      target_label: instance
      replacement: 'foo.domain.com'
```

## Blackbox Exporter

```
scrape_configs:
  - job_name: 'blackbox'
    metrics_path: /probe
    params:
      module: [http_2xx]  # Look for a HTTP 200 response.
    static_configs:
      - targets:
        - https://status.cloud.google.com
        - https://status.aws.amazon.com
        - https://azure.microsoft.com/en-us/status
    relabel_configs:
      - source_labels: [__address__]
        target_label: __param_target
      - source_labels: [__param_target]
        target_label: instance
      - target_label: __address__
        replacement: blackbox-exporter:9115
```

## MySQL Exporter

```
scrape_configs:
  - job_name: 'mysql-exporter'
    scrape_interval: 5s
    dns_sd_configs:
    - names:
      - 'tasks.mysql-exporter'
      type: 'A'
      port: 9104
```
