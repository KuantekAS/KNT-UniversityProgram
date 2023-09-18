# Efinity Design Flow 

In this lab you will use the uart_echo design that was introduced in the previous labs. You will use Debug Wizard to debug the hardware.

# Steps 
## Open an Efinity Project
1.	Start the Efinix if necessary and open the lab2 project (lab2.xml) you created in the previous lab using the File>Open Project. 

![This is a alt text.](/image/lab4/1.png "This is a sample image.")


## Efinity Debug Wizard

1.	Click the Efinity Debug Wizard then select dout, clk, rx_done_tick.
2.	Select clock domain as clk. Click Next. Click Finish.

![This is a alt text.](/image/lab4/2.png "This is a sample image.")

## Open Efinity Debugger

1. Click the Open Debugger.  
2. Select your target board then upload your .bit file for program the board.

![This is a alt text.](/image/lab4/3.png "This is a sample image.")

3. Click Add Probes button then select dout[7:0] and click ok.

![This is a alt text.](/image/lab4/4.png "This is a sample image.")

4.	Set Radix as Hex and value as 61 which equal to char “a”.
5.	Open Tera Term and set baud rate and com port.
6.	Enter character “a” then click Run.

![This is a alt text.](/image/lab4/5.png "This is a sample image.")

## Analyze Waveform of Debug in GTKWave

1.	Open the workspace folder of lab2 then open .vcd file. 
2.	Right click on the top and click Rescurse Import>Append.

![This is a alt text.](/image/lab4/6.png "This is a sample image.")

3.	Analyze the waves of dout[7:0]. 

![This is a alt text.](/image/lab4/7.png "This is a sample image.")


# 
# 
