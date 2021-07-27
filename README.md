# CoffeeMapApp

## Description
Simple app helping to find a coffee shop with specialty coffee near user. 

On the frist screen user can explore it over a map. Every coffee shop has a photo, description, Instagram link and address.  
On the second screen all coffee shops are displayed in a list with title, photo and address. <br>

## Technologies
App developed using:
* Swift
* Storyboards
* AutoLayout
* GoogleMaps SDK
* CocoaPods
* Flask app on Heroku

## Screenshots
<p float="left">
<img width="319" alt="launchscreen" src="https://user-images.githubusercontent.com/26043204/127155036-afa30d84-8b22-4c01-84bf-8f3b694c9fa8.png">
<img width="319" alt="list_screen" src="https://user-images.githubusercontent.com/26043204/127155098-0010117e-6a1a-4b20-9db4-72b9b482ffa1.png">
<br>
<img width="319" alt="map_markers" src="https://user-images.githubusercontent.com/26043204/127155140-281e46bf-de4c-40ac-a452-63b003bc5598.png">
<img width="319" alt="details_screen" src="https://user-images.githubusercontent.com/26043204/127155589-119cf466-3aa7-4830-9117-8a1a1f1d0429.png">
</p>


## How To Use
*App developed only for portfolio usage, not for for commercial use.*

Install 'GoogleMaps' and 'GooglePlaces' pods from Podfile.

In the file `AppDelegate.swift` replace `[GOOGLE_API_KEY]` in the line
```swift
let googleApiKey = "[GOOGLE_API_KEY]"
```
by valid API key. For more details about the key go to [link](https://developers.google.com/maps/documentation/ios-sdk/get-api-key "Maps SDK for iOS Documentation")
