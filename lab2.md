# Efinix Design Flow 

Create the SDC file to constrain the timing of the circuit. Synthesize the design with the provided basic timing constraints. You will analyze the output of the synthesized design and the generated reports. You will implement the design with the default settings and generate a bitstream. Then you will open a hardware session and program the FPGA.

# Steps 
## Create a Efinity Project
1. Open Efinity by selecting Start > Efinity 2022.1 > Efinity 2022.1. 
2. Click File > Create Project… to start the wizard. You will see Project Editor dialog box. 
3. Click the Browse button of the Project location field of the New Project form, browse 
to C:/Efinity/fpga_flow/labs/lab2. 
4. Enter lab2 in the Project name field. Make sure that the Family field selected Trion and 
device field selected the T8F8. Click Design tab. 

![This is a alt text.](/image/lab2/1.png "This is a sample image.")

5. Enter lab2 in the Top Module/Entity field. Select vhdl_2008 as the Target Language.
6. Click on the Add design file button and browse to the C:\Efinity\fpga_flow\sources\lab2 
directory, select top.vhd, uart_rx.vhd and uart_tx.vhd. 
7. Click on the Add SDC file button and browse to the C:\Efinity\fpga_flow\sources\lab2 
directory, select lab2.pt.sdc, click OK.

![This is a alt text.](/image/lab2/2.png "This is a sample image.")

## Analyze the design source files hierarchy

1. In the Netlist pane, click the Eleborate all button to analyzing the design source files 
hierarchy. 

![This is a alt text.](/image/lab2/3.png "This is a sample image.")

2. Double-click on the top entry to view its content. Notice in the VHDL code, the 
BAUD_RATE and CLOCK_RATE parameters are defined to be 115200 and 33 MHz 
respectively as shown in the design diagram. Also notice that the lower level modules 
are instantiated. 

![This is a alt text.](/image/lab2/4.png "This is a sample image.")

## Create the lab2.pt.sdc source

1. Open Efinity Interface Designer.

![This is a alt text.](/image/lab2/5.png "This is a sample image.")

2. Right click to GPIO and select create block. Enter the name as rx_i and select mode as 
input. 
3. Right click to GPIO and select create block. Enter the name as tx_o and select mode as 
output. 
4. Right click to GPIO and select create block. Enter the name as clk and select mode as 
input. Select connection type as pll_clkin. 
5. Right click to PLL and select create block. Enter the name as clk_pin and click 
Automated clock calculation. Set input frequency as 33.333 MHz (for xyloni). Enter the 
name clk_pin and click finish. 

![This is a alt text.](/image/lab2/6.png "This is a sample image.")

6. Click show/hide GPIO Resource Assigner. Enter the resource part according to the 
datasheet. 

![This is a alt text.](/image/lab2/7.png "This is a sample image.")

7. Save and check the design then click Generate Efinity constraint file. 

## Open the lab2.pt.sdc source and analyze the content

1. In the Project pane, expand the Constraints folder and double-click the lab2.pt.sdc entry 
to open the file in text mode.

![This is a alt text.](/image/lab2/8.png "This is a sample image.")

2. Line 4 creates the period constraint of 10ns with a duty cycle of 50%. The clk is 
constrained (lines 8, 9). The rx_i is constrained (lines 10, 11). The tx_o is constrained 
(lines 12, 13).

## Synthesize the Design

1. Before performing the synthesis process, we stop the synthesis, placement, routing and 
bitstream flow by pressing the toogle automated button. 
2. Click Synthesis under the dashboard. 
3. When the process is completed. Click Result tab and expand Synthesis. Open 
lab2.map.rpt file as we want to look at the synthesis output before progressing to the 
placement and routing the stage.

![This is a alt text.](/image/lab2/9.png "This is a sample image.")

## Place the Design

1. Click Placement under the dashboard. 
2. When the process is completed. Click Result tab and expand Placement. Open 
lab2.place.rpt file as we want to look at the placement output before progressing to the 
Routing stage. 

![This is a alt text.](/image/lab2/10.png "This is a sample image.")

## Route the Design

1. Click Routing under the dashboard. 
2. When the process is completed. Click Result tab and expand Routing. Open 
lab2.timing.rpt file as we want to look at the timing report before progressing to the 
Bitstream stage.

![This is a alt text.](/image/lab2/11.png "This is a sample image.")

## View Floorplan and Show Timing Delays

1. Select Floorplan and click view floorplan. 
2. Click Show Timing Path to see timing nets. 
3. Click Show Timing Delays to see timing delays.

![This is a alt text.](/image/lab2/12.png "This is a sample image.")

## Generate the Bitstream and Verify Functionality

1. Click Bitstream under the dashboard. 
2. This process will have generated a lab2.bit file under the Bitstream. 
3. Click Open programmer button. 

![This is a alt text.](/image/lab2/13.png "This is a sample image.")

4. Click Refresh USB Targets and select your Xyloni board. 
5. Click Select image file button and add lab2.bit file. 
6. Under the programming mode select JTAG and click start program button. 
7. The Device Configuration Status will lit when the device is programmed. 

![This is a alt text.](/image/lab2/14.png "This is a sample image.")

8. Verify the functionality by install and open the Tera Term. Then select com port click 
ok. 
9. Click Setup>Terminal… and check the Local echo box. 
10. Click Setup>Serial port and select speed as 115200 and click new settings. 
11. For test the uart communication, write something on the keyboard. 
12. When satisfied, power OFF the board. 
13. Close the Efinity program by selecting File > Exit.

# 
# 
