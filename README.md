# mone_weather_app

Weather App

## Getting Started

This is a Flutter app that displays the current weather for a location using data from a weather API(Fake).

## Features

Displays the current weather for a location
Supports multiple locations
Displays weather data in both Fahrenheit and Celsius(button not added but there is the functionality)
Displays Weather Forecast for each location

## Usage

Run the app using the following command:
flutter run
App will get your GPS location, if GPS is not enabled will get your location from service that gives location from your IP
Then will fetch data from weather API and display it
Enter a location in the search bar to get the current weather data for that location.

Swipe down on the screen to refresh the weather data.

Tap the temperature to toggle between Fahrenheit and Celsius.(not implemented, but need 10 minutes to implement)

## Architecture

as I should use "most advanced mobile architecture.", Decided to use BloC, adn Domain Driven Design with Clean architecture, (choosed bloc just becaus it is "most advanced", I'd like to use MobX)

## Problems I Faced

When Started, I realised that my Flutter Version is old......
so Updaating took me some Time, Becaus my Macbook is old too

Using BloC With DDD, was not the best solution, so i spent over 60% of my time just combining them
