
# Efinity Interface Designer SDC
# Version: 2022.1.226
# Date: 2022-11-11 14:31

# Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

# Device: T8F81
# Project: lab2
# Timing Model: C2 (final)

# PLL Constraints
#################
create_clock -period 10.0001 -waveform {5.0001 10.0001} [get_ports {clk_i}]

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clk}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rx_i}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rx_i}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {tx_o}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {tx_o}]
