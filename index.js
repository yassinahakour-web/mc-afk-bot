const mineflayer = require('mineflayer');

function createBot() {
  const bot = mineflayer.createBot({
    host: 'SMP_Family.aternos.me',
    port: 39018,
    username: 'hamza99',
    version: '1.21.4', // تعديل رقم الإصدار لـ 1.21.4
    checkTimeoutInterval: 60 * 1000
  });

  bot.on('spawn', () => {
    console.log('✅ تم دخول البوت للسيرفر بنجاح!');
  });

  bot.on('end', (reason) => {
    console.log(`⚠️ تم الانفصال: ${reason} - إعادة الاتصال بعد 15 ثانية...`);
    setTimeout(createBot, 15000);
  });

  bot.on('error', (err) => {
    console.log('❌ خطأ في الاتصال:', err.message);
  });
}

createBot();
