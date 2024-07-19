const events = require("../data/event.json");

const AbstractSeeder = require("./AbstractSeeder");

class EventSeeder extends AbstractSeeder {
  constructor() {
    super({ table: "event", truncate: true });
  }

  run() {
    for (let i = 0; i < events.length; i += 1) {
      const event = events[i];

      this.insert({
        ...event,
        refName: `event_${i}`,
      });
    }
  }
}

module.exports = EventSeeder;
