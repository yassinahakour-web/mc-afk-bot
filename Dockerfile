FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip

# تحميل النسخة الجاهزة واستخراجها في مجلد العمل مباشرة
RUN wget -O mcc.zip https://github.com/MCCTeam/Minecraft-Console-Client/releases/download/v26.2/MinecraftClient-20260731-499-linux-x64.zip || \
    wget -O mcc.zip https://github.com/MCCTeam/Minecraft-Console-Client/releases/download/v26.1/MinecraftClient-26.1-linux-x64.zip

RUN unzip -o mcc.zip && chmod +x MinecraftClient

COPY MinecraftClient.ini .

# تشغيل الملف التنفيذي المباشر
CMD ["./MinecraftClient"]
