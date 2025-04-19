module decoder_struct(
    input x,
    input y,
    input z,
    output d0,
    output d1,
    output d2,
    output d3,
    output d4,
    output d5,
    output d6,
    output d7
    );
and (d0,xn,yn,zn),(d1,xn,yn,z),(d2,xn,y,zn),(d3,xn,y,z),(d4,x,yn,zn),(d5,x,yn,z),(d6,x,y,zn),(d7,x,y,z);
not (xn,x),(yn,y),(zn,z);
endmodule