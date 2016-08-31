docker run -d --net host --privileged --name k8s-proxy \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        proxy \
            --bind-address=0.0.0.0 \
            --master=http://localhost:8080
