# Efinix Design Flow

This lab guides you through the process of using Efinity IDE to create a simple HDL design targeting the Xyloni. Create the SDC file to constrain the pin locations. You will synthesize, route and place the design with default settings. Finally, you will generate the bitstream and download it into the hardware to verify the design functionality.

# Steps
## Create a Efinity Project 
 
1. Open Efinity by selecting Start > Efinity 2022.1 > Efinity 2022.1. 
2. Click File > Create Project… to start the wizard. You will see Project Editor dialog box. 
3. Click the Browse button of the Project location field of the New Project form, browse 
to C:/Efinity/fpga_flow/labs/lab1. 
4. Enter lab1 in the Project name field. Make sure that the Family field selected Trion and 
device field selected the T8F8. Click Design tab.

    ![Add design and SDC files](/image/lab1/1.png "Project Name and Location entry.")

5.	Enter lab1 in the Top Module/Entity field. Select verilog_2k as the Target Language.
6.	Click on the Add design file button and browse to the C:\Efinity\fpga_flow\sources\lab1 directory, select lab1.v.

    ![Add design and SDC files](/image/lab1/2.png "Project Name and Location entry.")

## Open the lab1.v Source and Analyze the Content

1.	In the Design pane, double-click the lab1.v entry to open the file in text mode.

    ![This is a alt text.](/image/lab1/3.png "This is a sample image.")

2.	Notice in the Verilog code that the first line defines the timescale directive for the simulator. Lines 2-4 are comment lines describing the module name and the purpose of the module. Line 7 defines the beginning (marked with keyword module) and Line 17 defines the end of the module (marked with keyword endmodule). Lines 8-9 defines the input and output ports whereas lines 12-15 defines the actual functionality. 

    ![This is a alt text.](/image/lab1/4.png "This is a sample image.")

## Creating the Interface

1.	Open Efinity Interface Designer.

    ![This is a alt text.](/image/lab1/5.png "This is a sample image.")

2.	Right click to GPIO and select create bus. Enter the bus name as btn and select MSB as 1, LSB as 0. Mode should be select input.
3.	Right click to GPIO and select create bus. Enter the bus name as led and select MSB as 3, LSB as 0. Mode should be select output.

    ![This is a alt text.](/image/lab1/6.png "This is a sample image.")

4.	Click show/hide GPIO Resource Assigner. Enter the resource part according to the datasheet.

    ![This is a alt text.](/image/lab1/7.png "This is a sample image.")

5.	Save and check the design then click Generate Efinity constraint file.

    ![This is a alt text.](/image/lab1/8.png "This is a sample image.")

6. On project window, right click constraint and select add option. In outflow folder, SDC file will be generated. Select {projectname}.pt.sdc, tick copy to project and click open.

    ![This is a alt text.](/image/lab1/16.png "This is a sample image.")

## Open the lab1.pt.sdc Source and Analyze the Content

1.	In the Sources pane, expand the Constraints folder and double-click the lab1.pt.sdc entry to open the file in text mode. 

    ![This is a alt text.](/image/lab1/9.png "This is a sample image.")

2.	Lines 14-17 define the timing requirements between FPGA core and the I/Os for the input buttons and lines 18-25 define the timing requirements between FPGA core and the I/Os for output LEDs.

    ![This is a alt text.](/image/lab1/10.png "This is a sample image.")
## Synthesize the Design

1.	Before performing the synthesis process, we stop the synthesis, placement, routing and bitstream flow by pressing the toogle automated button.

    ![This is a alt text.](/image/lab1/17.png "This is a sample image."),![This is a alt text.](/image/lab1/18.png "This is a sample image.")

2.	Click Synthesis under the dashboard.
3.	When the process is completed. Click Result tab and expand Synthesis. Open lab1.map.rpt file as we want to look at the synthesis output before progressing to the placement and routing the stage.

    ![This is a alt text.](/image/lab1/19.png "This is a sample image.")
    ![This is a alt text.](/image/lab1/20.png "This is a sample image.")
## Place the Design

1.	Click Placement under the dashboard.
2.	When the process is completed. Click Result tab and expand Placement. Open lab1.place.rpt file as we want to look at the placement output before progressing to the Routing stage.

    ![This is a alt text.](/image/lab1/12.png "This is a sample image.")


## Route the Design

1.	Click Routing under the dashboard.
2. When the process is completed. Click Result tab and expand Routing. Open lab1.route.rpt and lab1.timig.rpt files as we want to look at the routing output before progressing to the Bitstream stage 

    ![This is a alt text.](/image/lab1/13.png "This is a sample image.")
    ![This is a alt text.](/image/lab1/21.png "This is a sample image.")

## Install Zadig and Connect Xyloni with Micro-USB

1.	Fort the installing zadig, read Xyloni Development Kit User Guide > Install USB Drivers content and [install zadig](zadig.akeo.ie).
2.	Connect the board to your computer with the appropriate cable and power it up.
3.	Run the Zadig software.
4.	Choose Options > List All Devices.
5. Install drivers for interfaces 0, 1, and 3 only.
    - Select libusb-win32 in the Driver drop-down list.
    - Click Replace Driver.
6. Close the Zadig software.

## Generate the Bitstream and Verify Functionality

1.	Click Bitstream under the dashboard.
2.	This process will have generated a lab1.bit file under the Bitstream.
3.	Click Open programmer button.

    ![This is a alt text.](/image/lab1/14.png "This is a sample image.")

4.	Click Refresh USB Targets and select your Xyloni board.
5.	Click Select image file button and add lab1.bit file.
6.	Under the programming mode select JTAG.
7.  Click start program button.

    ![This is a alt text.](/image/lab1/15.png "This is a sample image.")

8.	The Device Configuration Status will lit when the device is programmed.

    ![This is a alt text.](/image/lab1/22.png "This is a sample image.")
    
9.	Verify the functionality by pushing the buttons and observing the output on the LEDs (Refer to the earlier logic diagram).
10.	When satisfied, power OFF the board.
11.	Close the Efinity program by selecting File > Exit.

# 
# 
