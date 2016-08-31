docker run -d --net host --privileged --name k8s-kubelet \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume $(pwd)/manifests:/manifests \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        kubelet \
            --address=0.0.0.0 \
            --api-servers=http://localhost:8080 \
            --pod-manifest-path=/manifests
