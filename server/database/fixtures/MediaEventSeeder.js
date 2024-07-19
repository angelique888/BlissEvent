const AbstractSeeder = require("./AbstractSeeder");

class MediaEventSeeder extends AbstractSeeder {
  constructor() {
    super({ table: "MediaEvent", truncate: true });
  }

  run() {
    for (let i = 0; i < 5; i += 1) {
      const fakeMediaEvent = {
        Media_id: this.faker.number.int({ max: 100 }),
        Event_id: this.faker.number.int({ max: 50 }),
      };

      this.insert(fakeMediaEvent);
    }
  }
}
module.exports = MediaEventSeeder;
