// generic 1 bit n input multiplexer
 module generic_n_input_mux
#(parameter n= 5)
(
input [n-1:0] x,
input [$clog2(n)-1:0] s,
output reg f
);
integer k;
always @(x,s)
begin
	for(k=0;k<n;k=k+1)
	begin 
		if(k==s)
			f=x[k];
	end
end   
endmodule