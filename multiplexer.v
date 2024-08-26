
// structural representation for 2:1 mux
// Gate level modeling
module mux_gate_level(
	input I1,I2,s,
	output f
);

not G0(s0,s);
and G1(g0,I1,s0);
and G2(g1,I2,s);
or  G3(f,g0,g1);

endmodule

