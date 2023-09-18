# Efinix Design Flow 

In this lab you will use the IP Catalog to adding an uart core. You will generate the example design when generating the core in the IP Manager Configuration window. Compile the example design project and download the .hex or .bit file to your board.

# Steps 
## Create a Efinity Project
1. Open Efinity by selecting Start > Efinity 2022.1 > Efinity 2022.1. 
2. Click File > Create Project… to start the wizard. You will see Project Editor dialog box. 
3. Click the Browse button of the Project location field of the New Project form, browse 
to C:/Efinity/fpga_flow/labs/lab3. 
4. Enter lab3 in the Project name field. Make sure that the Family field selected Trion and 
device field selected the T8F8. Click Design tab. 

![This is a alt text.](/image/lab3/1.png "This is a sample image.")

5. Enter uart_demo_top in the Top Module/Entity field. Select verilog_2k as the Target 
Language, click OK

## Add IP

1. Right click the IP in the Project panel. Then select New IP. Expand Installed IP, Efinix 
and Serial Interface Protocols. 
2. Select UART IP and click next. 
3. leave everything at their default settings. Click Generate. 

## Open IP Project

1. Close the previous Project. 
2. Click File>Open Project 
3. Select lab3>ip>uart>T20F256_devkit>uart_demo.xml and open the Uart IP Project. 

## Analyze the design source files hierarchy.

1. In the Netlist pane, click the Eleborate all button to analyzing the design source files 
hierarchy. 

![This is a alt text.](/image/lab3/2.png "This is a sample image.")

2. Double-click on the uart_demo_top entry to view its content. Notice in the verilog code, 
the led_ti output pins instantiated. Delete the output led_ti pins. 

![This is a alt text.](/image/lab3/3.png "This is a sample image.")

## Create the lab3.pt.sdc source. 

1. Open Efinity Interface Designer. 

![This is a alt text.](/image/lab3/4.png "This is a sample image.")

2. Right click to GPIO and select create block. Enter the name as ext_clkin and select mode 
as input. Then select connection type as pll_clkin. 
3. Right click to GPIO and select create block. Enter the name as rst_n and select mode as 
input. 
4. Right click to GPIO and select create block. Enter the name as rx_i and select mode as 
input. 
5. Right click to GPIO and select create block. Enter the name as tx_o and select mode as 
output. 
6. Right click to GPIO and select create bus. Enter the name as led_tr and enter the MSB 
as 3, LSB as 0. Then click next. 
7. Right click to PLL and select create block. Enter the name as pll_inst1 and click 
Automated clock calculation. Set input frequency as 33.333 MHz (for xyloni). Set clock 
0 frequency as 50 MHz Enter the name clk and click finish. 
8. In the Manuel Configuration tab enter Reset Pin Name as pll_rst_n, Locked Pin Name 
as pll_locked, Referance clock frequency as 33.3330, Multiplier as 72, Pre Divider as 
3, Pin Name as clk and Output Divider as 16. 
9. Delete the led_ti bus.

![This is a alt text.](/image/lab3/5.png "This is a sample image.")

10. Click show/hide GPIO Resource Assigner. Enter the resource part according to the 
Xyloni’s datasheet. 

![This is a alt text.](/image/lab3/6.png "This is a sample image.")

11. Save and check the design then click Generate Efinity constraint file.

## Open the lab3.pt.sdc source and analyze the content. 

1. In the Project pane, expand the Constraints folder and double-click the lab3.pt.sdc entry 
to open the file in text mode

![This is a alt text.](/image/lab3/7.png "This is a sample image.")

2. Line 14 creates the period constraint of 20ns with a duty cycle of 50%. The clk is 
constrained (lines 18, 19). The rst_n is constrained (lines 20, 21). The rx_i is constrained 
(lines 22, 23). The led_tr is constrained (lines 24, 31). The tx_o is constrained (lines 32, 
33). 

## Synthesize, Place and Route the Design

1. Before performing the synthesis process, we open the synthesis, placement, routing and 
bitstream flow by pressing the toogle automated button. 
2. Click Synthesis under the dashboard and complete the process. 

## Generate the Bitstream and Verify Functionality

1. Click Bitstream under the dashboard. 
2. This process will have generated a lab3.bit file under the Bitstream. 
3. Click Open programmer button. 

![This is a alt text.](/image/lab3/8.png "This is a sample image.")

4. Click Refresh USB Targets and select your Xyloni board. 
5. Click Select image file button and add lab3.bit file. 
6. Under the programming mode select JTAG and click start program button. 
7. The Device Configuration Status will lit when the device is programmed.

![This is a alt text.](/image/lab3/9.png "This is a sample image.")

8. Verify the functionality by install and open the Tera Term. Then select com port click 
ok. 
9. Click Setup>Terminal… and check the Local echo box. Select receive and transmit as 
LF. 
10. Click Setup>Serial port and select speed as 115200 and click new settings. 
11. For test the uart communication, write 0002!12ef on the keyboard. 
12. Then write 0002!0001, 0002!0002 etc. 
13. When satisfied, power OFF the board. 
14. Close the Efinity program by selecting File > Exit.

![This is a alt text.](/image/lab3/10.png "This is a sample image.")

# 
# 
