const mineflayer = require('mineflayer');

function createBot() {
  const bot = mineflayer.createBot({
    host: 'yassin1000-nTZP.aternos.me',
    port: 39018,
    username: 'mohamad94',
    version: '1.20.4',
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
