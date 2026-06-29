---
title: "Smart Chess Board"
permalink: /projects/chess/
excerpt: "Smart chess board using custom PCBs <br> ![thumbnail](https://img.youtube.com/vi/P4ngyFu9qqA/maxresdefault.jpg){: width=\"68%\"}"
collection: projects
published: true
---

## Background
This was a class project for ROB 310 where my fellow teammates and I made a chessboard that lights up and shows you possible moves. If you want to see it in action check out the [Videos](#videos) Section below.

## How it works
The board is made up of four identical PCBs each occupying a fourth of the board (this was done to save on costs as most manufacturers have a minimum order requirement of about five boards). The frame was 3d printed as well as the chess pieces. Each of the pieces have a magnet in the bottom of them. Under each of the squares on the board the PCB has a hall effect magnetic sensor and a LED. 

Assuming all pieces start in their correct positions this gives the board all the info it needs to run a game. The brains of the board is a Raspberry Pi 5 all though that is over kill for what we used it for it is what we had on hand. An ESP32 microcontroller gathers the data from the magnetic sensors and sends it to the Pi over USB.

## If I were to make a V2
This was our groups first adventure into PCB design and if I were to make a second version I have a few changes in mind beyond making the assembly a bit more tidy.

### Magnetic Error
The sensors are prone to some amount of error and fickleness as you might see in the final demo video below this can result in some delay before it registers a moved piece. To fix this I would change it to four sensors per square instead of one to allow for better coverage.

### Too Many Wires
Each board needs 7 wires to use the sensors. Ground, Power, Data and four wires for controlling the MUX's. This means there is 28 wires connected to the ESP32. This was an oversight on our parts as the Ground, Power and MUX lines can all be shared between the boards. 

In a version two I would have the shared signals chain across the boards which should cut the number of wires connected to the ESP32 down to 10 and overall make the wiring cleaner. 

## Videos
### Testing the PCBs
<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/uqvf8_LLC_o?autoplay=0&mute=1">
Testing the sensors
</iframe>

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/rDJvqYf36CU?autoplay=0&mute=1">
Testing the sensors through a part of the board
</iframe>

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/P4ngyFu9qqA?autoplay=0&mute=1">
Testing full LED matrix in assembled board.
</iframe>


### Demos
This is an example of the board in action going through the "Fools Mate" the fastest possible chess game.

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/W0lswfeCuDc?autoplay=0&mute=1">
Fools Mate Demo
</iframe>
