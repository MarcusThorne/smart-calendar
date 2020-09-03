<br />
<p align="center">
  <a href="https://github.com/MarcusThorne/Smart_Calendar">
    <img src="https://user-images.githubusercontent.com/46029164/92086288-e6826e00-edc1-11ea-9368-42fe68bfbd27.png" alt="Logo" >
  </a>

  <h3 align="center">Welcome to Smart Calendar ReadMe</h3>

  <p align="center">
    <strong>Explore the docs »</strong>
    <a href="http://www.smartcalendar.xyz/">View Demo</a>
    ·
    <a href="https://github.com/MarcusThorne/Smart_Calendar/issues">Report Bug</a>
    ·
    <a href="https://github.com/MarcusThorne/Smart_Calendar/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [Contact](#contact)

## About The Project

![Screenshot 2020-09-03 at 08 55 37](https://user-images.githubusercontent.com/46029164/92087434-5fce9080-edc3-11ea-8c6e-0bcb5a343cf1.png)
![Screenshot 2020-09-03 at 08 55 54](https://user-images.githubusercontent.com/46029164/92087440-61985400-edc3-11ea-8f0a-78b84a83ce88.png)
![Screenshot 2020-09-03 at 08 56 22](https://user-images.githubusercontent.com/46029164/92087445-63621780-edc3-11ea-9994-6b857a200351.png)

This repository contains a web application - Smart Calendar where users can set up events, which will be notified when to leave via email based on the estmiated location and the event location.

This Rails app is generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates),
which is created using Rails, PostgreSQL, Devise, simple Calendar, Mapbox API, Developer routing API and sidekiq. The live website has been deployed to
Heroku. This project was developed by [Marcus](https://github.com/MarcusThorne),
[Aidan](https://github.com/Scotland05), [Rohit](https://github.com/Ritz2286) & [Zee](https://github.com/zeemai).

### Built With
#### Check your Ruby version
> Ruby version for this project - 2.6
#### Gems being used in the project
- **letter_opener**
- **devise**
- **sidekiq**
- **turbolinks**
- **Simple Form**
- **font-awesome-sass**
- **bootstrap**
- **geocoder**
- **simple_calendar**
- **redis**

## Getting Started

### Prerequisites

#### Initialize the database

```shell
rails db:create db:migrate db:seed
```

### Installation

#### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```
#### Clone the repository

```shell
git clone git@github.com:MarcusThorne/Smart_Calendar.git
cd project
```

#### Initialize the database

```shell
rails db:create db:migrate db:seed
```

#### Serve

```shell
rails s
```

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/MarcusThorne/Smart_Calendar/issues) for a list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## Contact

You can contact us by opening an issue in this [repo](https://github.com/MarcusThorne/Smart_Calendar/issues). We will get back to you as soon as we can.
