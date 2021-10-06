FROM busybox AS builder
RUN dd if=/dev/urandom of=/500m bs=5M count=100
FROM scratch
COPY --from=builder /500m /
