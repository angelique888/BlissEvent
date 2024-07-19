const AbstractSeeder = require("./AbstractSeeder");

class EventUserSeeder extends AbstractSeeder {
  constructor() {
    super({ table: "EventUser", truncate: true });
  }

  run() {
    for (let i = 0; i < 5; i += 1) {
      const fakeEventUser = {
        Event_id: this.faker.number.int({ max: 50 }),
        User_id: this.faker.number.int({ max: 100 }),
      };

      this.insert(fakeEventUser);
    }
  }
}
module.exports = EventUserSeeder;
