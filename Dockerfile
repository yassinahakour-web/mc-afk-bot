FROM mcr.microsoft.com/dotnet/sdk:8.0

WORKDIR /app

# تثبيت أداة MCC
RUN dotnet tool install --global MinecraftConsoleClient --version 26.1.0-build.499 || true

# إضافة مسار الأدوات للنظام
ENV PATH="${PATH}:/root/.dotnet/tools"

COPY MinecraftClient.ini .

# تشغيل الأداة باسمها الصحيح مباشرة
CMD ["MinecraftConsoleClient"]
