---
title: "NASA Big Idea Challenge 2024"
permalink: /projects/nasa_bic/
excerpt: "Inflatable Two Wheeled Lunar Rover <br> ![nasa_bic](/images/nasa_bic.png){: width=\"50%\"}"
collection: projects
published: true
---


![nasa_bic](/images/nasa_bic.png){: width="30%"}

## Background
The NASA Big Idea Challenge or NASA BIC was a yearly competition hosted by NASA where they would invite students to research explore a novel type of space technology.(Unfortunately it was postponed indefinitely after 2024 due to budget cuts) Student teams start by submitting a proposal and from there a group of finalist teams are selected and given funding to design a prototype. 

The theme of BIC 2024 was lunar inflatables and a group of students from U of M proposed a two wheeled cargo carrying robot that could be stored compactly then inflate to size called "CARGO-BEEP". They secured funding as a finalist and began work in early 2024. It should be noted I at this point had not joined the project.

## The Controls Prototype
I was brought on in the fall of 2024 to help with the testing in designing of the controls system on the "Controls Prototype" a 2x4 and two pool tubes which was to be used as a test platform while the other teams worked on the final prototype. 

Videos of the controls prototype in action can be found down in the [videos](#videos) section.

### Code Architecture
The robot operated using the **ROS2** middleware framework and balanced using a **PID** Controller. 

During movement it used a secondary **PID** controller to control the heading of the robot as calculated by the **IMU**

My biggest contribution in this stage of the project was the development of **Gazebo** Sim environment to test the controls in without risk to the physical robot. I used **Docker** to host this environment so that it could be easily transferable across machines.

Our code can be found [here](https://github.com/Umich-NASA-Big-Idea-Challenge) on Github. 

### Electronics
The robot was comprised mainly of a **Orin Nano**, two brushless exoskeleton motors and an **IMU**. My main contribution to the electronics system was the inclusion of remote power relay toggled by key fob to kill power to the motors in case of loss of comms.   

## The Integrated Prototype
Unfortunately do to scope creep and set backs on the physical construction of the final prototype we had to present at the end of year expo with our systems as separate concepts. However we had funding left over so some of us stayed on and worked through the first half of 2025 to see our final prototype realized. It was at this point I took on the role of head of Software and Electronics and was put in charge of integrating our system into the final one.

### Heartbeat Relay
The main improvement that was made to the Software and Electronics during this time was the swapping out of the toggle relay for one wired to an **ESP32 LORA** radio. The radio would listen for a signal from a sister radio held by the operator and only power the motors if the signal could be heard. 

Because this new system's default state was off it greatly increased safety when compared to the old system where if the robot got out of range of the fob there was no way to kill power to the motors.

### The Results
We were able to assemble and run some tests on the final prototype after months of work with reduced labor. Unforutently the proprietary motor drivers that bridged communication between the motors and the orin failed at this point and with funding running low and the team ready to split for the summer we had to call it there.

Pictures of the assembled final prototype can be found [below](#final-prototype) as well as some brief clips of us testing the electronics [here](#the-integrated-prototype)

## Videos
### Controls Prototype In Action
<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/JdvzpTrx-OQ?autoplay=0&mute=1">
A video of Cargo Beep being tested on the UMICH wave field
</iframe>

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/S4ACy7DnndQ?autoplay=0&mute=1">
A video of Cargo Beep driving down the side walk.
</iframe>

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/nVFpHtLjD0o?autoplay=0&mute=1">
A video of Cargo Beep being tested on the mars yard rocks
</iframe>

### Integrated Prototype
<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/Ul2TxS6-vrA?autoplay=0&mute=1">
A video of testing the integrated electronics.
</iframe>

<iframe height="120"
allow="fullscreen"
src="https://www.youtube.com/embed/qJVIhNFjKgA?autoplay=0&mute=1">
A video of the integrated prototype spinning the center body.
</iframe>


## Pictures
### Integrated Prototype
![nasa_electronics_closeup](/images/nasa-electronics-closeup.jpg)
![center_body_assembeled](/images/nasa-center-body-assembeled.jpg)
![center_body_no_wheels](/images/nasa-centerbody-no-wheels.jpg)