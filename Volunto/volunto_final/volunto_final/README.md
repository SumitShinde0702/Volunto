# Volunto - by Si Hui, Kenneth, Yong Jia, Sumit

## Overview

Volunto is a platform designed to connect and streamline the process of connecting volunteers with events. It includes 
features such as algorithmic matching of volunteer and beneficiary, event sign-ups, attendance taking, and certificate generation.

## Table of Contents

- [Features](#features)
- [Setup](#setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Personality test** Volunteers and beneficiaries (e.g. elderly and students) can take this personality test
 to provide information about their interests and preferences.
- **Algorithmic Matching:** The app then uses algorithms to match volunteers with beneficiaries based on shared interests using nltk. In the
future, this will be done better and this is currently in its infant stages. 
- **Event Sign-ups:** Volunteers can browse and sign up for events that they are interested in, all in one place.
- **Chat function:** Organisers can chat with the volunteers to clear up any details and provide a form of communication.
-**Attendance taking:** The volunteer has to scan the QR code on the beneficiary's device or vice versa for attendance in order to ensure that 
they are actually present with the beneficiary. 
- **Certificate Generation:** Certificates are generated for volunteers based on their participation. Volunteers can see all their certificates
in one place and organizers can generate and make them available as and when they like. Currently, organisers will have to manually send this certificates 
with one button but in the future, we can connect with Certifier's API and auto generate certificates the moment the volunteers have completed the event.

## Setup

To set up the Volunteer App, follow these steps:

1. Clone the repository: `git clone https://github.com/your-username/volunteer-app.git`
2. Navigate to the project directory: `cd volunteer-app`
3. Install dependencies: `npm install` or `yarn install`

## Usage

1. Run the app: `npm start` or `yarn start`
2. Access the app in your browser: `http://localhost:3000`

## Contributing

If you'd like to contribute to the project, follow these steps:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/new-feature`
3. Make your changes and commit: `git commit -m 'Add new feature'`
4. Push to the branch: `git push origin feature/new-feature`
5. Submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
