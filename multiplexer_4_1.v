/*
making 4:1 mux using 3 2:1 mux 
using instansiation
*/
module mux_4_1 (
	input I0,I1,I2,I3,s0,s1,
	output f
);
wire g0,g1;
mux_gate_level M0(I0,I1,s0,g0);
mux_dataflow M1(
.I1(I2),
.I2(I3),
.s(s0),
.f(g1)
);
mux_dataflow M2(
.I1(g0),
.I2(g1),
.s(s1),
.f(f)
);
endmodule

