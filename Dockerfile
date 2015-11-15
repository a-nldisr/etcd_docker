FROM scratch
ADD         etcd-v2.2.1-darwin-amd64/etcd        /bin/etcd
VOLUME ["/data"]

EXPOSE 4001 7001 2379 2380

ENTRYPOINT ["/bin/etcd"]

CMD ["-data-dir=/data"]
