FROM mcr.microsoft.com/dotnet/sdk:8.0

WORKDIR /app

# تثبيت أداة MCC الجاهزة مباشرة عبر dotnet
RUN dotnet tool install --global MinecraftConsoleClient --version 26.1.0-build.499 || true

ENV PATH="${PATH}:/root/.dotnet/tools"

COPY MinecraftClient.ini .

CMD ["MinecraftClient"]
