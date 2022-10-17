FROM bellsoft/liberica-openjre-alpine:17.0.4.1-1

COPY target/dependency/* /function/
COPY target/function.jar /function

# apk add libstdc++ has no effect
RUN apk add libstdc++

ENTRYPOINT [ "java",  "-XshowSettings:vm", "-cp", "/function/*", "Run" ]