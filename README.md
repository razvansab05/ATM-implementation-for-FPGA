# ATM Project

A bank ATM for EURO cash withdrawals, designed in VHDL and implemented on a Digilent Basys 3 FPGA board.

**Authors:** Sabău Mihai Răzvan, Ilea Ștefan Antoniu

## Features

- 8 accounts, each identified by a 3-bit code and protected by a 4-digit PIN
- Card is blocked after 3 wrong PIN entries
- Four operations: **Check Balance**, **Deposit**, **Withdrawal**, **Change PIN**
- Withdrawals check the account balance, then the available banknotes (5, 10, 20, 50, 100, 200, 500), with a limit of 1000 EUR per transaction
- After each operation the user can perform another one or return the card
- Control flow implemented as a finite state machine; status shown on LEDs and the 7-segment display

## Documentation

The full documentation is in this repository, in **[`ATM_documentation.pdf`](ATM_documentation.pdf)**. It covers the problem statement, block diagrams, the command and execution units, the VHDL code of every component, the FPGA pin assignment, usage instructions, the state diagram and photos of the running system.

Please read it before running or modifying the project.
