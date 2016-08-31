docker run -d --net host --privileged --name k8s-apiserver \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        apiserver \
        --service-cluster-ip-range=172.17.0.0/16 \
        --etcd-servers=http://localhost:4001 \
        --allow-privileged=true
