FROM mcr.microsoft.com/dotnet/sdk:8.0

WORKDIR /app

# تثبيت البوت رسمياً عبر dotnet (طريقة متوافقة 100% مع أنظمة السحاب)
RUN dotnet tool install --global MinecraftConsoleClient --version 26.1.0-build.499

COPY MinecraftClient.ini .

# أمر التشغيل المباشر من مسار الأدوات
ENTRYPOINT ["/root/.dotnet/tools/MinecraftConsoleClient"]
