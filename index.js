const mineflayer = require('mineflayer');

function createBot() {
  const bot = mineflayer.createBot({
    host: 'yassin1000-N2zD.aternos.me',
    port: 12961,
    username: 'mohamad88',
    version: false, // يمنع رمي الخطأ وتجاوز فحص الاصدار
    checkTimeoutInterval: 60 * 1000
  });

  bot.on('spawn', () => {
    console.log('✅ تم دخول البوت للسيرفر بنجاح!');
  });

  bot.on('end', (reason) => {
    console.log(`⚠️ تم الانفصال بسبب: ${reason} - إعادة الاتصال بعد 15 ثانية...`);
    setTimeout(createBot, 15000);
  });

  bot.on('error', (err) => {
    console.log('❌ خطأ في الاتصال:', err.message);
  });
}

createBot();
