# mobile

[expo-img]: ../img/expo.jpg
[expo-img-qr]: ../img/expo-qr.jpg
[expo-build]: ../img/expo-build.jpg
[expo-img-ex]: ../img/expo-main.jpg

Mobile applications that works with this project.

## beems-qr-reader

A simple Expo application that reads the QR code and send the information to blockchain.

Requires access to the [REST API](../api) and [blockchain REST API](../blockchain).

### Installation

![][expo-img]

Download and install Expo XDE (requires NodeJS): https://github.com/expo/xde/releases .

On the smart device side, download the Expo app from the app shop.

Run `npm install` here to install the necessary modules.

### Running

![][expo-img-qr]

Run Expo XDE and pick `beems-qr-reader` here to compile the project.

Click on the `Share` button and scan the QR code/enter the information with a smart device using an Expo app (both should be in the same network).

Wait for the compilation of the program to complete at the mobile side (may take up to 5 minutes).

![][expo-build]

![][expo-img-ex]
