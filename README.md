# RealEyes-CodeChallenge streaming app:
 An AVPlayer app for streaming sources.
<p align="center">
  <img width="250" src="https://user-images.githubusercontent.com/43827399/63911861-0b8f1480-c9e9-11e9-973d-fb08c1db05f8.png" />
</p>

## Run Project:
- Xcode Version 10.3
- Simulator - iPhone XR, iPhone X
- macOS 10.14.4 Mojave
- iOS 12.3.1

## Technologies - Frameworks - Architecture:
- Swift 5
- UIKit, AVKit, XCTTest
- MVVM - [Source](https://www.youtube.com/watch?v=n06RE9A_8Ks&t=752s)

## Launch Screen
- Upon Launching the app, the user sees a welcome page as the application loads the content.

<img width="250" alt="launch screen" src="https://user-images.githubusercontent.com/43827399/63910754-3b3c1d80-c9e5-11e9-8573-1386bdc69c6a.png">

## Features:
- A list of videos available for streaming.

<img width="250" alt="launch screen" src="https://user-images.githubusercontent.com/43827399/63914533-c1119600-c9f0-11e9-83e8-25da94b33881.png">

- Upon tapping on a item, the user is able to view HLS content.

![default playback](https://user-images.githubusercontent.com/43827399/63915108-5d886800-c9f2-11e9-9410-4e658c8cfb4d.gif)

- user can play/pause, seek, and display current time/duration of the video.

![defaultPlaybackControl](https://user-images.githubusercontent.com/43827399/63915591-aa207300-c9f3-11e9-8ac6-7dca8087c86a.gif)

## Requirements:
- [x] Minimal Application. 
- [x] Allows a user to select a source from a list view and playback HLS content. 
- [x] A detail view using the AVPlayer. 
- [x] Written in swift.
- [x] MVVM architecture. 
- [x] The player shall have a custom control bar with the ability to play/pause, seek, and display current time/duration.
- [x] Video allows landscape mode.

## Timeframe and process:
- First, it took me few days to learn MVVM architecture, and while learning so, I first built the application in MVC to
then migrate to a more cleaner flow.
- I chose UICollectionView over UITableView to display the list of videos because there is more freedom in designing
UICollectionViewCells, control the separation insets and sizes.
- Brainstorming the flow was not very difficult taking in cosideration the functionalities are minimal within the application.
- playback control was very challenging, I started building my own playback control from scratch and this is what took me few day to grasp and implement. Later on i learned iOS provide default custom playback controls and this made this project su much more easier to complete.

## List of features I could improve:
- Custom designs for launch page
- Custom logo for the app
- Add Lottie COCOAPODS for better UI/UX [example here](https://airbnb.io/lottie/#/)
- Copyright infrightment statements to allow the app to be deployed in the App Store.
The app uses open source HLS contents. [you can view them found here](https://github.com/bengarney/list-of-streams/blob/master/README.md)

[this link provides copyright letter templates](https://www.upcounsel.com/licensing-agreement)

- Custom playback controls. 

Here is an example I Got to work on another branch:

![CustomskipAndRewind](https://user-images.githubusercontent.com/43827399/63915695-e8b62d80-c9f3-11e9-8243-8e53fe1019f9.gif)

