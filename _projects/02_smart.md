---
title: "SMART Lab Test Bed"
permalink: /projects/smart/
excerpt: "Integrating Spot Using ROS2 <br> ![thumbnail](https://img.youtube.com/vi/qCN_qThoB9E/maxresdefault.jpg){: width=\"68%\"}"
collection: projects
published: true
---

## Background
This project was a part of the [Barton Research Group](https://brg.engin.umich.edu/) where I worked in the groups smart manufacturing test bed to integrate a [Spot](https://bostondynamics.com/products/spot/) robot into the test bed. The main goal of my project was to get the robot to a state where it could be used and tested on in future projects and to have it participate in a lab wide demo which can be see [below](#lab-demo-video) 

## Base Architecture
Spot robots can be controlled through API calls and a SDK provided by Boston Dynamics which is available in python. The RAI Institute maintains a ROS2 wrapper for the Spot robot that imports most of its basic functions into ROS. I used this project as a jumping off point and even contributed a bug fix related to the lidar to the project.

### Docker Environment
In order to document dependencies and due to the nature of ROS dependencies being more complex, I built our code base for spot in a Docker Environment. This was done to make the environment easily reproducible and help cut down on the "it works on my machine" problems. Using this I was able to do dev work on my laptop and easily transfer it over to a lab computer.

### ROS 1 Machines
Many of the robots and machines in lab currently operate on a ROS1 architecture which is not by default compatible with ROS2. While some bridges exist I was not able to successfully setup any of them due to version conflicts, so I ended up coding my own simple bridge using the ZeroMq protocol which is a peer to peer publish subscribe protocol with no central server. The ROS2 env controlling spot would establish a link with the ROS1 env of the lab and send relevant data back and forth. This allowed us to integrate Spot into the lab.

## Custom ROS2 Packages
During my time in the lab I created three custom packages for Spot on top of the zeromq bridge for the lab.
- An arm control package to better wrap and improve the base controller given by the ROS2 wrapper.
- A navigation package to allow us to tell spot to go to a waypoint via topic.
- A lab demo script that uses the other two packages along with the bridge to help deliver parts around the lab during a lab wide demo.

## Lab Demo Video
Below is compilation of our lab demo showing off the concept of spot helping with deliveries.
<iframe
src="https://www.youtube.com/embed/qCN_qThoB9E?autoplay=0&mute=1">
A compilation of clips from the lab demo.
</iframe>
