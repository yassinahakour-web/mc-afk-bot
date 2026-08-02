FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /app

RUN apt-get update && apt-get install -y curl unzip jq

# جلب رابط أحدث ملف linux-x64.zip تلقائياً وتنزيله
RUN DOWNLOAD_URL=$(curl -s https://api.github.com/repos/MCCTeam/Minecraft-Console-Client/releases/latest | jq -r '.assets[] | select(.name | contains("linux-x64.zip")) | .browser_download_url') && \
    curl -L -o mcc.zip "$DOWNLOAD_URL" && \
    unzip -o mcc.zip && \
    chmod +x MinecraftClient

COPY MinecraftClient.ini .

CMD ["./MinecraftClient"]
