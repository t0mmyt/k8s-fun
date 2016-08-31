docker run -d --net host --privileged --name k8s-kubelet \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume $(pwd)/manifests:/manifests \
    t0mmyt/hyperkube-amd64:test /hyperkube \
        kubelet \
            --pod-manifest-path=/manifests
