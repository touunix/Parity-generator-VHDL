# ENG Parity generator VHDL
The circuit serves as a parity generator. Based on the entered 8-bit word, it displays information on a seven-segment display on the FPGA board, with an even or odd number of "ones" in the input word.
In a situation when the entered word contains an even number of "ones", the system signals it on the seven-segment display with the displayed letter "E".
In a situation when the entered word contains an odd number of "ones", the system signals it on the seven-segment display with the displayed letter "O".

In the simulation of the system, the switches are initialized to OFF and then switched to ON every 100 ms until all switches are ON.

The activation of individual segments of the display is done by giving a low state "0" to the output AN0 - AN3.
Activating individual segments of a single display is done by giving a low state "0" on the A-G outputs.
