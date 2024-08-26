
// structural representation for 2:1 mux
// data flow modeling
module mux_dataflow(
	input I1,I2,s,
	output f
);
assign f=(~s&I1)|(s&I2);

endmodule