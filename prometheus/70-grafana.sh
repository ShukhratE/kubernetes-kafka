kubectl create namespace grafana
helm install grafana stable/grafana \
    --namespace grafana \
    --set persistence.storageClassName="gp2" \
    --set persistence.enabled=true \
    --set adminPassword='Kaltura123!' \
    --values grafana.yml \
    --set service.type=LoadBalancer
