# ENG Parity generator VHDL
###### Description
The circuit serves as a parity generator. Based on the entered 8-bit word, it displays information on a seven-segment display on the FPGA board, with an even or odd number of "ones" in the input word.
In a situation when the entered word contains an even number of "ones", the system signals it on the seven-segment display with the displayed letter "E".
In a situation when the entered word contains an odd number of "ones", the system signals it on the seven-segment display with the displayed letter "O".

In the simulation of the system, the switches are initialized to OFF and then switched to ON every 100 ms until all switches are ON.

The activation of individual segments of the display is done by giving a low state "0" to the output AN0 - AN3.
Activating individual segments of a single display is done by giving a low state "0" on the A-G outputs.

###### Simulation results
<img src="https://user-images.githubusercontent.com/79804729/158474784-55bc23ea-211a-431b-a8d9-0ef59d0b232f.png" width="100%"></img>

###### Verification results
<img src="https://user-images.githubusercontent.com/79804729/159366491-e89a4c4c-3fbb-41a2-8f9b-f4022e13dd27.gif" width="100%"></img>

###### Files description
- top.vhd - main VHDL design file with the operation algorithm
- tb.vhd - testbench file
- iup1.xdc - file with constraints for the **Nexys-A7 board (FPGA xc7a100tcsg324-1)**


# PL Generator parzystości VHDL
###### Opis
Układ po zaprogramowaniu, służy jako generator parzystości. Na podstawie wprowadzonego słowa 8-bitowego, wyświetla informacje na siedmiosegmentowym wyświetlaczu znajdującego się na płytce FPGA, o parzystej lub nieparzystej liczbie „jedynek” w słowie wejściowym.
W sytuacji gdy wprowadzone słowo zawiera parzystą liczbę „jedynek”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej litery „E”.
W sytuacji gdy wprowadzone słowo zawiera nieparzystą liczbę „jedynek”, układ sygnalizuje to na wyświetlaczu siedmiosegmentowym za pomocą wyświetlanej litery „O”.

W przeprowadzonej symulacji układu przełączniki są zainicjalizowane na OFF, a następnie co 100 ms przełączane na ON do momentu gdy wszystkie przełączniki są ON.

Aktywowanie poszczególnych segmentów wyświetlacza odbywa się poprzez podanie stanu niskiego „0” na wyjściach AN0 - AN3.
Aktywowanie poszczególnych segmentów pojedynczego wyświetlacza odbywa się poprzez podanie stanu niskiego „0” na wyjściach A-G.

###### Wyniki symulacji
<img src="https://user-images.githubusercontent.com/79804729/158474784-55bc23ea-211a-431b-a8d9-0ef59d0b232f.png" width="100%"></img>

###### Wyniki weryfikacji
<img src="https://user-images.githubusercontent.com/79804729/159366491-e89a4c4c-3fbb-41a2-8f9b-f4022e13dd27.gif" width="100%"></img>

###### Opis plików
- top.vhd - główny plik projektu VHDL z algorytmem działania
- tb.vhd - plik testbench
- iup1.xdc - plik z ograniczeniami projektowymi dla **płytki Nexys-A7 (układ FPGA xc7a100tcsg324-1)**
