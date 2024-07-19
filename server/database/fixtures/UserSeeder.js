const AbstractSeeder = require("./AbstractSeeder");

class UserSeeder extends AbstractSeeder {
  constructor() {
    super({ table: "user", truncate: true });
  }

  run() {
    for (let i = 0; i < 2; i += 1) {
      const fakeUser = {
        email: this.faker.internet.email(),
        password: this.faker.internet.password(),
        firstname: this.faker.person.firstName(),
        lastname: this.faker.person.lastName(),
        date: new Date(),
        refName: `user${i}`,
      };

      this.insert(fakeUser);
    }
  }
}

module.exports = UserSeeder;
