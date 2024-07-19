const AbstractSeeder = require("./AbstractSeeder");

class MediaSeeder extends AbstractSeeder {
  constructor() {
    super({ table: "Media", truncate: true });
  }

  run() {
    for (let i = 0; i < 10; i += 1) {
      const fakeMedia = {
        type: this.faker,
        url: this.faker,
        date: new Date(),
        refName: `media${i}`,
      };

      this.insert(fakeMedia);
    }
  }
}

module.exports = MediaSeeder;
