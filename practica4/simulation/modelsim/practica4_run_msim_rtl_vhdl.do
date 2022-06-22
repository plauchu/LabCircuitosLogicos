transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rocco/Documents/practica4/mux_4_1/mux_4_1.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/generador/generador.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/dec_2_4/dec_2_4.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/bcd_7/bcd_7.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/circuito_aritmetico/circuito_aritmetico.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/componentes.vhd}
vcom -93 -work work {C:/Users/rocco/Documents/practica4/practica4.vhd}

