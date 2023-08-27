vsim -voptargs=+acc work.SPI_TB
add wave -position insertpoint  \
sim:/SPI_TB/MOSI
add wave -position insertpoint  \
sim:/SPI_TB/clk
add wave -position insertpoint  \
sim:/SPI_TB/SS_n
add wave -position insertpoint  \
sim:/SPI_TB/rst_n
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/cs
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/ns
add wave -position insertpoint  \
sim:/SPI_TB/DUT/MISO
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/En_S2P
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/En_P2S
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/rx_data
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/tx_data
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/rx_valid
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/tx_valid
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/flag
add wave -position insertpoint  \
sim:/SPI_TB/DUT/memory/ADDR
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/u2/seq
add wave -position insertpoint  \
sim:/SPI_TB/DUT/slave/u1/seq
add wave -position insertpoint  \
sim:/SPI_TB/DUT/memory/Mem
run -all
