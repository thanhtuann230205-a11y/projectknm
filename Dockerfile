# Stage 1: Build dự án
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
# Lệnh này đảm bảo bỏ qua hoàn toàn các cấu hình test còn sót lại
RUN mvn clean package -DskipTests -Dmaven.test.skip=true

# Stage 2: Chạy ứng dụng
FROM amazoncorretto:17-alpine-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
