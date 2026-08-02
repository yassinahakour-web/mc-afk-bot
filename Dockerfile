FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip jq

# جلب أحدث إصدار تلقائياً وبدون الوقع في خطأ 404
RUN DOWNLOAD_URL=$(wget -qO- https://api.github.com/repos/MCCTeam/Minecraft-Console-Client/releases/latest | jq -r '.assets[] | select(.name | contains("linux-x64.zip")) | .browser_download_url') && \
    wget -O mcc.zip "$DOWNLOAD_URL" && \
    unzip mcc.zip && \
    chmod +x MinecraftClient

COPY MinecraftClient.ini .

CMD ["./MinecraftClient"]
