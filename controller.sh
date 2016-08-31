docker run -d --net host --privileged --name k8s-controller \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        controller-manager \
            --master=http://127.0.0.1:8080 \
            --leader-elect=true
