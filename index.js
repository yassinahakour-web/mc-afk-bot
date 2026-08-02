const mineflayer = require('mineflayer');

function createBot() {
  const bot = mineflayer.createBot({
    host: 'yassin1000-N2zD.aternos.me',
    username: 'mohamad99',
    version: false
  });

  bot.on('spawn', () => {
    console.log('✅ تم دخول البوت للسيرفر بنجاح!');
  });

  bot.on('end', () => {
    console.log('⚠️ تم فصل البوت، إعادة الاتصال بعد 10 ثوانٍ...');
    setTimeout(createBot, 10000);
  });

  bot.on('error', (err) => {
    console.log('❌ خطأ:', err.message);
  });
}

createBot();
