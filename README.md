# Kaffie - Reimagine the way you brew.
![Full-sized image of Kaffie](https://i.imgur.com/dciGqik.png)

This README details the process that was used in developing this product including the business, marketing, and hardware aspects. To view the product, please visit our website at https://kaffie.me.

## Introduction (Skip down if you want to read the technical specs)
### Why a Coffee Machine?
Over the course of summer 2021 I wanted to try and make a hardware product so I could apply some of the theoretical knowledge that I had gained throughout my degree as a computer engineering student. Being in engineering, I drank lots of coffee, usually through a nice big coffee pot that I would share with the rest of my housemates. However, sometimes I would treat myself (specifically in the morning) and instead use my Nespresso machine and one of their expensive first-party pods.

What I realized while doing this though is that the machine I was using was not perfect and had a lot of room for improvement. Being in a semi-awoken state in the morning made relatively small annoyances extremely amplified on their impact on my mood. For example, minute issues such as having an empty water container, having to wait for the water to heat up, or the loud sound of the pump working made my mood measurably worse.

These annoyances meant that I had a problem which I could potentially solve, but I didn't know how to a) solve the issue or b) if this was just an issue that I was facing. To validate my problem, I interviewed numerous students and professionals asking them the simple question "What is the most annoying part of your morning routine?". To my surprise a good number of responses were not having motivation to get out of bed, making food, or waking up. When I asked "what is the best part of your morning routine?" the majority stated "when I have my first sip of coffee". Finally, to narrow the scope of the project I asked "Whats the most annoying thing about your coffee machine?" and many of the issues were the same as stated above. Now that I knew I had a problem I could start thinking of the solution.

### What is It And How Does It Work?
![](https://i.imgur.com/cucLeNV.png)
Hopefully this cutaway view and MS Paint overlay gives some detail in how it works. Water flows through the baseboard from the tank and to the first pump. The water is then heated through water heater and enters the 'pod siringe' from the bottom. The hot water then sprays into the pod (not displayed) and runs down through the grate, into another tuble. This coffee is then pumped again and enters the cup from the bottom.

Because of the relatively complicated circuit and components, I knew that the machine would be expensive to manufacture and so I had to make a design that would match an 'artsy, minimalist' aesthetic to make it seem more premium. I based the design off of other household items that I noticed in my house that I thought looked good. I didn't want the product to be something that _had_ to be in the kitchen, but moreso something that could be used as a centerpiece in several different rooms.

## The Business

## The Software
### Website
![](https://i.imgur.com/Q2oAE7h.png)

### App (?)
Thanks to Apple's HomeKit and the relatively simple interaction required for the machine (turning it off and on) an iOS app actually didn't need to be created as I could leverage the existing infrastructure used for Apple Home (at least for an MVP). The watch does require an app to detect when you are moving / waking up to preheat the water but it is very light (and in progress). 

## The Firmware
The firmware was modelled after a finite state machine (FSM) which incorporates all the different states that the machine could be in. Coding this way can also lead to being able to easily create a custom chip using Verilog or VHDL (if it made sense from a cost sense). Although the code uses a polling approach to react to button presses, I am in the progess of making it interrupt-based to reduce the power consumption of the unit.

## The Hardware
PCB Design                 |  Schematic
:-------------------------:|:-------------------------:
<img src="https://i.imgur.com/GzrbaR4.png" width="400">  |  <img src="https://i.imgur.com/u9RHyvf.png" width="400">

In this section if you're ever asking yourself _why was this part chosen?_ the answer is probably **cost**. Being a student I didn't have a big budget (and spent most of it on a 3D printer), but I did have a bunch of scraps from previous projects laying around that I managed to use.

### NodeMCU ESP12-E
This was used as the microcontroller for the system due to its wifi capability. Additionally, the part (unofficially) supports Apple HomeKit through an Arduino package. One shortcoming of this part was the lack of analog inputs (only 1). In order to be able to read the weight of the water / cup I required two analog inputs and so had to use a multiplexer to switch between reading the two values.

### RAC03E-3.3SK_277
I was (and still am) pretty scared of AC current due to following Youtube channels such as ElectroBoom and PhotonicInduction (cool channel, he plays with 100s of amps on his indoor carpet). However, I thought that to be as careful as possible, I wouldn't make the ACDC converter myself and get something covered. This component convers 120VAC to 3.3VDC which is perfect for the NodeMCU as well as the other components (relays, multiplexer).

### Heating Element
Pulled from a cheap $20 Amazon Basics coffee machine that I had last year. Connects directly to 120VAC but is switched on/off using a relay to control the temperature.

### 2x Ulka Pump Model EA Type EAP5
This was actually the most expensive part of the machine - I needed two pumps (one from water tank -> coffee and other from coffee -> cup). These pumps are actually used as replacement parts for other coffee machines so they work perfectly. Unforunately, they are not rated to work with hot water, so it would have to be changed out when the product goes into production.
