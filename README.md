# Real Estate API

> An API to consume Real Estate data

![screenshot](./app_screenshot.png)

Additional description about the project and its features.

## Built With

- Ruby 3, Rails 6
- Rspec, Faker, FactoryBot, Shoulda Matchers and Capybara

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Install Postgres, Ruby (rbenv recommended) and Rails in the local system.

### Setup

```bash
git clone git@github.com:angel-mora/real-estate-api.git
cd real-estate-api
bundle install
rails db:create db:migrate db:seed
rails s
```

### Usage

Go to the appropiate route that matches your need.

You can test it with Command Line using curl.

```bash
curl http://localhost:3000/api/v1/properties/1
```

### Run tests

To find the variety of specs required for this Database Business Requirements, just run in your console:

```bash
rspec
```

You will find them passing with green color as indicator. This same feature is also setup in GitHub Actions, running against each Pull Request.

### Deployment

Create a Heroku account.

Set your Heroku remote.

Now you should move to ```main``` branch.

Then simply add, commit and:

```bash
git push heroku main
```

After this, you still need to migrate the database, so run:

```bash
herokun run rails db:migrate
```

## Author

👤 **Angel Mora**

- GitHub: [@angel-mora](https://github.com/angel-mora)
- LinkedIn: [angelmoradev](https://linkedin.com/in/angelmoradev)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Thank you for reviewing this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
