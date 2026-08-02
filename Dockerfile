FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip

# تحميل النسخة المباشرة الموثوقة بدون أوامر معقدة
RUN wget -O mcc.zip https://github.com/MCCTeam/Minecraft-Console-Client/releases/download/v26.1/MinecraftClient-26.1-linux-x64.zip && \
    unzip mcc.zip && \
    chmod +x MinecraftClient

COPY MinecraftClient.ini .

CMD ["./MinecraftClient"]
