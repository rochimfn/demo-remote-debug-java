FROM eclipse-temurin:17-jdk AS builder
WORKDIR /opt/demo
COPY . .
RUN ./mvnw package

FROM eclipse-temurin:17-jre AS runner
WORKDIR /opt/demo
COPY --from=builder /opt/demo/target/demo-0.0.1-SNAPSHOT.jar .
COPY scripts/entry-point.sh .
CMD ["./entry-point.sh"]