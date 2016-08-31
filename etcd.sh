docker run -d --net host --name etcd \
    gcr.io/google_containers/etcd:2.0.9 \
    /usr/local/bin/etcd \
        --addr=127.0.0.1:4001 \
        --bind-addr=0.0.0.0:4001 \
        --data-dir=/var/etcd/data
