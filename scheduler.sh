docker run -d --net host --privileged --name k8s-scheduler \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        scheduler \
            --master=http://127.0.0.1:8080 \
            --leader-elect=true
