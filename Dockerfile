FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/MCCTeam/Minecraft-Console-Client/releases/download/v26.2/MinecraftClient-20260731-499-linux-x64.zip
RUN unzip MinecraftClient-20260731-499-linux-x64.zip

COPY MinecraftClient.ini .

CMD ["./MinecraftClient"]
