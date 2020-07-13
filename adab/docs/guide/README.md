# Introduction

Ayo Dengar Ayo Bicara (ADAB) is an app to help deaf and mute students at [BINUS University](https://binus.ac.id) by providing access to real-time speech transcription service allowing them to better understand the lecturers. Currently, we have created apps for two platforms. One for mobile (Android) and for the web (using Vue.js).

<p align="center">
  <img src="https://i.ibb.co/DpB2KHk/rsz-screenshot-20200713-231153-adab.jpg" alt="Adab for Android"/>
  <br>
  Adab for Android
  <br>
  <br>
  <img src="https://i.ibb.co/X33wNjw/adab-web.jpg"  alt="Adab for Web"/>
  <br>
  Adab for Web
</p>

## Background

Adab is created by [Bearcats](https://bearcats.dev), a software development team consisting of five tech enthusiasts from the Generation-22 Mobile Application and Technology program at BINUS University. We develop apps in the hope of helping society through technology, and Adab is one of them.

We understand that those who are deaf and mute have difficulty when attending classes, and they have to be accompanied by someone who can help them interpret what the lecturer says to sign language, and that's not an easy thing to do. They could somewhat understand the lecturer by reading the lecturer's lips, but that's also limited by the current situation where online learning is a requirement.

That's why we created Adab. We used real-time speech transcription technology to convert the lecturer's speech into text and broadcasts it to all the student's devices in real-time.

## How it works

Adab uses the following technologies to enable its features:
* [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API), to transcribe the lecturer's speech (we're planning to move to Google Cloud Platform Text-to-Speech API soon).
* [socket.io](https://socket.io/), to allow us to send the transcribed speech to students' devices in real-time.
* [Vue.js](https://vuejs.org/), the framework we used to create the web app.