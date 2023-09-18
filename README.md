# Efinity FPGA Design Flow on Xyloni


# Course Description
 
###### 
The purpose of this workshop is to introduce digital designers to the FPGA design flow using Efinity design tool. This workshop become familiar with synthesis, implementation, IO planning, static timing analysis and debug features of Efinity.

The labs have been developed on a PC running Microsoft Windows 10 and using Efinity 2022.1 version tools. 


#	Setup Source Files
## In the instructions for the labs;
{sources} refers to C/Efinity/fpga_flow/sources. You can download the source files for the labs from the cloned sources directory

{labs} refers to C/Efinity/fpga_flow/labs. It assumes that you will create the mentioned directory structure to carry out the labs of this workshop


# Setup hardware
Connect Xyloni 

 The Xyloni Development Board development board has a FTDI FT4232H chip to communicate with the USB port. This chip has separate channels that the board uses for the SPI, JTAG, and UART interfaces. You need to install a driver for each interface, and then each interface appears as a unique FTDI device.

 On Windows, you use software from Zadig to install drivers (zadig.akeo.ie). 

 The Zadig software includes a variety of drivers. When programming Efinix FPGAs, use one of these drivers

    1. libusb-win32 (version)—This driver is more stable for unplugplug events. This         driver does not work when debugging with OpenOCD.
    2.libusbK (version)—Use this driver if you plan to use OpenOCD to debug any Efinix         RISC-V SoC.


# Lab Descriptions

## Lab 1 

This lab guides you through the process of using Efinity IDE to create a simple HDL design targeting the Xyloni. Create the SDC file to constrain the pin locations. You will synthesize, route and place the design with default settings. Finally, you will generate the bitstream and download it into the hardware to verify the design functionality.

## Lab 2  

Create the SDC file to constrain the timing of the circuit. Synthesize the design with the provided basic timing constraints. You will analyze the output of the synthesized design and the generated reports. You will implement the design with the default settings and generate a bitstream. Then you will open a hardware session and program the FPGA. 

## Lab 3

In this lab you will use the IP Catalog to adding an uart core. You will generate the example design when generating the core in the IP Manager Configuration window. Compile the example design project and download the .hex or .bit file to your board.

## Lab 4

In this lab you will use the uart_echo design that was introduced in the previous labs. You will use Debug Wizard to debug the hardware.

## 
## 
