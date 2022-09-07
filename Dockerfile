FROM bellsoft/liberica-openjre-alpine:17.0.4

COPY target/dependency/* /function/
COPY target/function.jar /function

# add-opens because of https://github.com/aws/aws-lambda-java-libs/issues/261
ENTRYPOINT [ "java",  "-XshowSettings:vm", "-XX:MaxRAMPercentage=40", "--add-opens", "java.base/java.util=ALL-UNNAMED", "-cp", "/function/*", "Run" ]