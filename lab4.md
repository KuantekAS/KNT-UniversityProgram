# Efinity Design Flow 

In this lab you will use the uart_echo design that was introduced in the previous labs. You will use Debug Wizard to debug the hardware.

# Steps 
## Open an Efinity Project
1.	Start the Efinix if necessary and open the lab2 project (lab2.xml) you created in the previous lab using the File>Open Project. 

    ![This is a alt text.](/image/lab4/1.png "This is a sample image.")

## Efinity Debug Wizard

1.	Click the Efinity Debug Wizard. 

    ![This is a alt text.](/image/lab4/8.png "This is a sample image.")
2.	Then select dout, clk, rx_done_tick. Select clock domain as clk. Click Next. Click Finish.

    ![This is a alt text.](/image/lab4/2.png "This is a sample image.")

3. Generate new bitstream file for debugging.
## Open Efinity Debugger

1. Click the Open Debugger.  

    ![This is a alt text.](/image/lab4/9.png "This is a sample image.")

2. Select your target board then upload your .bit file for program the board. 

    ![This is a alt text.](/image/lab4/3.png "This is a sample image.")

3. After the bitstream , connect debug Interface.

    ![This is a alt text.](/image/lab4/10.png "This is a sample image.")

4. Click Add Probes button then select dout[7:0] and click ok.

    ![This is a alt text.](/image/lab4/4.png "This is a sample image.")

5.	Set Radix as Hex and value as 61 which equal to char “a”. Then click run.
    ![This is a alt text.](/image/lab4/11.png "This is a sample image.")
6.	Open Tera Term and set baud rate and com port.
7.	Enter character “a” then click Run.

    ![This is a alt text.](/image/lab4/5.png "This is a sample image.")

## Analyze Waveform of Debug in GTKWave

1.  You can install GTKWave with [iVerilog](https://bleyer.org/icarus/). You have to select install GTKWave option. Then GTKWave will installed automatically.

    ![This is a alt text.](/image/lab4/12.png "This is a sample image.")

2.	Open the workspace folder of lab2 then open .vcd file. 
3.	Right click on the top and click Rescurse Import>Append.   
4.	Analyze the waves of dout[7:0].
5.  In new version of GTKWave, waveform will be opened automatically.             (iverilog-v12-20220611)

    ![This is a alt text.](/image/lab4/7.png "This is a sample image.")


# 
# 
