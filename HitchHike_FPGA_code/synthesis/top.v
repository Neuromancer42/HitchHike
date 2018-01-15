`timescale 1 ns/100 ps
// Version: v11.8 SP2 11.8.2.4


module dbpsk_modulator(
       reset_c,
       clock_out,
       output_signal_c
    );
input  reset_c;
input  clock_out;
input  output_signal_c;

    wire counter_31_0, \counter[14]_net_1 , counter_0_sqmuxa, 
        counter19_13, counter19_5, counter19_4, counter19_11, 
        counter19_12, counter19_1, counter19_0, counter19_9, 
        counter19_7, \counter[3]_net_1 , \counter[2]_net_1 , 
        counter19_3, \counter[12]_net_1 , \counter[11]_net_1 , 
        \counter[6]_net_1 , \counter[7]_net_1 , \counter[5]_net_1 , 
        \counter[1]_net_1 , \counter[0]_net_1 , \counter[4]_net_1 , 
        \counter[13]_net_1 , \counter[9]_net_1 , \counter[10]_net_1 , 
        \counter[15]_net_1 , \counter[8]_net_1 , N_74, counter_c13, 
        counter_n14, counter_n13, counter_c12, counter_n2, 
        counter_n2_tz, counter_n3, counter_c2, counter_n4, counter_c3, 
        counter_n5, counter_c4, counter_n6, counter_c5, counter_n7, 
        counter_c6, counter_n8, counter_c7, counter_n9, counter_c8, 
        counter_n10, counter_c9, counter_n11, counter_c10, counter_n12, 
        counter_c11, counter_n15, counter_n0, counter_n1, GND, VCC;
    
    XA1 \counter_RNO[12]  (.A(\counter[12]_net_1 ), .B(counter_c11), 
        .C(counter_0_sqmuxa), .Y(counter_n12));
    DFN1C0 \counter[2]  (.D(counter_n2), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[2]_net_1 ));
    NOR2B \counter_RNILJI8[4]  (.A(counter_c3), .B(\counter[4]_net_1 ), 
        .Y(counter_c4));
    NOR3C \counter_RNIUTQM1[9]  (.A(counter19_1), .B(counter19_0), .C(
        counter19_9), .Y(counter19_12));
    DFN1C0 \counter[7]  (.D(counter_n7), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[7]_net_1 ));
    NOR2A \counter_RNO[0]  (.A(counter_0_sqmuxa), .B(
        \counter[0]_net_1 ), .Y(counter_n0));
    DFN1C0 \counter[6]  (.D(counter_n6), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[6]_net_1 ));
    XA1 \counter_RNO[4]  (.A(\counter[4]_net_1 ), .B(counter_c3), .C(
        counter_0_sqmuxa), .Y(counter_n4));
    VCC VCC_i (.Y(VCC));
    NOR3C \counter_RNIGL45[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_c2));
    NOR3A \counter_RNIE0S6[2]  (.A(counter19_7), .B(\counter[3]_net_1 )
        , .C(\counter[2]_net_1 ), .Y(counter19_11));
    DFN1C0 \counter[8]  (.D(counter_n8), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[8]_net_1 ));
    XA1 \counter_RNO[1]  (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(counter_0_sqmuxa), .Y(counter_n1));
    DFN1C0 \counter[15]  (.D(counter_n15), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[15]_net_1 ));
    NOR2B \counter_RNI32OP[10]  (.A(counter_c9), .B(
        \counter[10]_net_1 ), .Y(counter_c10));
    NOR2B \counter_RNI316H[9]  (.A(counter_c8), .B(\counter[9]_net_1 ), 
        .Y(counter_c9));
    DFN1C0 \counter[14]  (.D(counter_n14), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[14]_net_1 ));
    XA1 \counter_RNO[8]  (.A(\counter[8]_net_1 ), .B(counter_c7), .C(
        counter_0_sqmuxa), .Y(counter_n8));
    XA1 \counter_RNO[14]  (.A(counter_c13), .B(\counter[14]_net_1 ), 
        .C(counter_0_sqmuxa), .Y(counter_n14));
    XA1 \counter_RNO[11]  (.A(\counter[11]_net_1 ), .B(counter_c10), 
        .C(counter_0_sqmuxa), .Y(counter_n11));
    DFN1C0 \counter[4]  (.D(counter_n4), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[4]_net_1 ));
    DFN1C0 \counter[5]  (.D(counter_n5), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[5]_net_1 ));
    NOR2B \counter_RNI9BEJ1[13]  (.A(counter_c12), .B(
        \counter[13]_net_1 ), .Y(counter_c13));
    NOR2 \counter_RNI794H[13]  (.A(\counter[13]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(counter19_3));
    NOR2B \counter_RNO[2]  (.A(counter_0_sqmuxa), .B(counter_n2_tz), 
        .Y(counter_n2));
    GND GND_i (.Y(GND));
    XA1 \counter_RNO[5]  (.A(\counter[5]_net_1 ), .B(counter_c4), .C(
        counter_0_sqmuxa), .Y(counter_n5));
    XA1 \counter_RNO[3]  (.A(\counter[3]_net_1 ), .B(counter_c2), .C(
        counter_0_sqmuxa), .Y(counter_n3));
    NOR2A \counter_RNI4TD3[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(counter19_5));
    DFN1C0 \counter[12]  (.D(counter_n12), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[12]_net_1 ));
    DFN1C0 \counter[1]  (.D(counter_n1), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[1]_net_1 ));
    AX1C \counter_RNO_0[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_n2_tz));
    NOR2B \counter_RNIKOND[7]  (.A(counter_c6), .B(\counter[7]_net_1 ), 
        .Y(counter_c7));
    NOR2B \counter_RNIUL0C[6]  (.A(counter_c5), .B(\counter[6]_net_1 ), 
        .Y(counter_c6));
    DFN1C0 \counter[3]  (.D(counter_n3), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[3]_net_1 ));
    NOR2B \counter_RNO_1[15]  (.A(\counter[14]_net_1 ), .B(
        counter_0_sqmuxa), .Y(counter_31_0));
    XA1 \counter_RNO[6]  (.A(\counter[6]_net_1 ), .B(counter_c5), .C(
        counter_0_sqmuxa), .Y(counter_n6));
    AOI1B \counter_RNIKG3I2[2]  (.A(counter19_13), .B(counter19_12), 
        .C(output_signal_c), .Y(counter_0_sqmuxa));
    XA1 \counter_RNO[13]  (.A(counter_c12), .B(\counter[13]_net_1 ), 
        .C(counter_0_sqmuxa), .Y(counter_n13));
    NOR2B \counter_RNIBSEF[8]  (.A(counter_c7), .B(\counter[8]_net_1 ), 
        .Y(counter_c8));
    XA1 \counter_RNO[9]  (.A(\counter[9]_net_1 ), .B(counter_c8), .C(
        counter_0_sqmuxa), .Y(counter_n9));
    NOR2B \counter_RNI44A21[11]  (.A(counter_c10), .B(
        \counter[11]_net_1 ), .Y(counter_c11));
    NOR2B \counter_RNI9K9A[5]  (.A(counter_c4), .B(\counter[5]_net_1 ), 
        .Y(counter_c5));
    NOR2 \counter_RNIB4E3[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(counter19_7));
    DFN1C0 \counter[11]  (.D(counter_n11), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[11]_net_1 ));
    NOR3C \counter_RNIKOND[2]  (.A(counter19_5), .B(counter19_4), .C(
        counter19_11), .Y(counter19_13));
    NOR2B \counter_RNI2KR6[3]  (.A(counter_c2), .B(\counter[3]_net_1 ), 
        .Y(counter_c3));
    NOR2 \counter_RNIS99A[15]  (.A(\counter[15]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(counter19_0));
    NOR2B \counter_RNO_0[15]  (.A(counter_31_0), .B(counter_c13), .Y(
        N_74));
    NOR3A \counter_RNIAE821[11]  (.A(counter19_3), .B(
        \counter[12]_net_1 ), .C(\counter[11]_net_1 ), .Y(counter19_9));
    AX1C \counter_RNO[15]  (.A(counter_0_sqmuxa), .B(
        \counter[15]_net_1 ), .C(N_74), .Y(counter_n15));
    NOR2B \counter_RNI67SA1[12]  (.A(counter_c11), .B(
        \counter[12]_net_1 ), .Y(counter_c12));
    XA1 \counter_RNO[7]  (.A(\counter[7]_net_1 ), .B(counter_c6), .C(
        counter_0_sqmuxa), .Y(counter_n7));
    NOR2B \counter_RNI2RD3[4]  (.A(\counter[0]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(counter19_4));
    XA1 \counter_RNO[10]  (.A(\counter[10]_net_1 ), .B(counter_c9), .C(
        counter_0_sqmuxa), .Y(counter_n10));
    DFN1C0 \counter[13]  (.D(counter_n13), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[13]_net_1 ));
    NOR2 \counter_RNIO59A[9]  (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(counter19_1));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(counter_n10), .CLK(clock_out), .CLR(
        reset_c), .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(counter_n9), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[9]_net_1 ));
    
endmodule


module two_mhz_clock(
       reset_c,
       GLA,
       clock_out_c
    );
input  reset_c;
input  GLA;
output clock_out_c;

    wire N_11, \counter[1]_net_1 , \counter[0]_net_1 , N_9, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_4, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , counter14_9, counter14_1, counter14_0, 
        counter14_7, counter14_8, \counter[4]_net_1 , counter14_5, 
        \counter[5]_net_1 , counter14_3, \counter[2]_net_1 , 
        \counter[6]_net_1 , \counter[9]_net_1 , \counter[7]_net_1 , 
        \counter[11]_net_1 , \counter[10]_net_1 , clock_out_RNO_0, 
        \counter_3[5] , I_14_0, \counter_3[4] , I_12_0, \counter_3[1] , 
        I_5_0, I_4, I_7_0, I_9_0, I_17_0, I_20_0, I_23, I_26, I_28, 
        I_32, N_2, \DWACT_FINC_E[6] , \DWACT_FINC_E[2] , 
        \DWACT_FINC_E[5] , N_3, \DWACT_FINC_E[3] , N_5, N_6, N_7, 
        \DWACT_FINC_E[1] , N_8, N_10, GND, VCC;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5_0));
    XOR2 un5_counter_I_20 (.A(N_6), .B(\counter[7]_net_1 ), .Y(I_20_0));
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_9));
    XOR2 un5_counter_I_28 (.A(N_3), .B(\counter[10]_net_1 ), .Y(I_28));
    NOR2 \counter_RNIJDL4[11]  (.A(\counter[11]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(counter14_0));
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_7));
    XOR2 un5_counter_I_17 (.A(N_7), .B(\counter[6]_net_1 ), .Y(I_17_0));
    XOR2 un5_counter_I_32 (.A(N_2), .B(\counter[11]_net_1 ), .Y(I_32));
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C0 \counter[2]  (.D(I_7_0), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20_0), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_11), .B(\counter[2]_net_1 ), .Y(I_7_0));
    XOR2 un5_counter_I_23 (.A(N_5), .B(\counter[8]_net_1 ), .Y(I_23));
    DFN1C0 \counter[6]  (.D(I_17_0), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[6]_net_1 ));
    AOI1B \counter_RNO[4]  (.A(counter14_9), .B(counter14_8), .C(
        I_12_0), .Y(\counter_3[4] ));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \counter[8]  (.D(I_23), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_5));
    NOR3C \counter_RNI82AV2[11]  (.A(counter14_1), .B(counter14_0), .C(
        counter14_7), .Y(counter14_9));
    NOR2 \counter_RNI007U[7]  (.A(\counter[9]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(counter14_1));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_10));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_2));
    AOI1B \counter_RNO[1]  (.A(counter14_9), .B(counter14_8), .C(I_5_0)
        , .Y(\counter_3[1] ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_11));
    INV un5_counter_I_4 (.A(\counter[0]_net_1 ), .Y(I_4));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    XOR2 un5_counter_I_9 (.A(N_10), .B(\counter[3]_net_1 ), .Y(I_9_0));
    DFN1C0 \counter[4]  (.D(\counter_3[4] ), .CLK(GLA), .CLR(reset_c), 
        .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[5]  (.D(\counter_3[5] ), .CLK(GLA), .CLR(reset_c), 
        .Q(\counter[5]_net_1 ));
    XOR2 un5_counter_I_14 (.A(N_8), .B(\counter[5]_net_1 ), .Y(I_14_0));
    XOR2 un5_counter_I_26 (.A(N_4), .B(\counter[9]_net_1 ), .Y(I_26));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_3));
    AX1C clock_out_RNO (.A(counter14_8), .B(counter14_9), .C(
        clock_out_c), .Y(clock_out_RNO_0));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AOI1B \counter_RNO[5]  (.A(counter14_9), .B(counter14_8), .C(
        I_14_0), .Y(\counter_3[5] ));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    NOR2A \counter_RNIJI6U[0]  (.A(\counter[0]_net_1 ), .B(
        \counter[3]_net_1 ), .Y(counter14_5));
    DFN1C0 \counter[1]  (.D(\counter_3[1] ), .CLK(GLA), .CLR(reset_c), 
        .Q(\counter[1]_net_1 ));
    DFN1C0 \counter[3]  (.D(I_9_0), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_6));
    NOR2 \counter_RNIUT6U[6]  (.A(\counter[8]_net_1 ), .B(
        \counter[6]_net_1 ), .Y(counter14_3));
    NOR3B \counter_RNILKDS1[2]  (.A(\counter[5]_net_1 ), .B(
        counter14_3), .C(\counter[2]_net_1 ), .Y(counter14_7));
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_8));
    DFN1C0 \counter[11]  (.D(I_32), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[11]_net_1 ));
    XOR2 un5_counter_I_12 (.A(N_9), .B(\counter[4]_net_1 ), .Y(I_12_0));
    AND3 un5_counter_I_30 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[5] ), .Y(\DWACT_FINC_E[6] ));
    NOR3B \counter_RNI87DS1[1]  (.A(\counter[4]_net_1 ), .B(
        counter14_5), .C(\counter[1]_net_1 ), .Y(counter14_8));
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_4));
    DFN1C0 clock_out (.D(clock_out_RNO_0), .CLK(GLA), .CLR(reset_c), 
        .Q(clock_out_c));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C0 \counter[0]  (.D(I_4), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(I_26), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[9]_net_1 ));
    
endmodule


module main_clock(
       clock_out,
       reset_c,
       GLA
    );
output clock_out;
input  reset_c;
input  GLA;

    wire N_7, \counter[1]_net_1 , \counter[0]_net_1 , N_5, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , counter14_4, 
        counter14_2, \counter[2]_net_1 , \counter[5]_net_1 , 
        counter14_3, \counter[6]_net_1 , \counter[7]_net_1 , 
        \counter[4]_net_1 , clock_out_RNO_net_1, \counter_3[0] , I_5, 
        I_7, I_9, I_12, I_14, I_17, I_20, N_2, \DWACT_FINC_E[2] , N_3, 
        \DWACT_FINC_E[1] , N_4, N_6, GND, VCC;
    
    XOR2 un5_counter_1_I_20 (.A(N_2), .B(\counter[7]_net_1 ), .Y(I_20));
    XOR2 un5_counter_1_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    NOR2B un5_counter_1_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_5));
    DFN1C0 \counter[3]  (.D(I_9), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[3]_net_1 ));
    AND3 un5_counter_1_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_6));
    XOR2 un5_counter_1_I_7 (.A(N_7), .B(\counter[2]_net_1 ), .Y(I_7));
    AND3 un5_counter_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_4));
    XOR2 un5_counter_1_I_12 (.A(N_5), .B(\counter[4]_net_1 ), .Y(I_12));
    DFN1C0 \counter[1]  (.D(I_5), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[1]_net_1 ));
    XOR2 un5_counter_1_I_9 (.A(N_6), .B(\counter[3]_net_1 ), .Y(I_9));
    AND3 un5_counter_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\counter[5]_net_1 ), .Y(N_3));
    DFN1C0 \counter[2]  (.D(I_7), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[2]_net_1 ));
    DFN1C0 \counter[0]  (.D(\counter_3[0] ), .CLK(GLA), .CLR(reset_c), 
        .Q(\counter[0]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AOI1 \counter_RNO[0]  (.A(counter14_4), .B(counter14_3), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    NOR3A \counter_RNI0BUP1[2]  (.A(counter14_2), .B(
        \counter[2]_net_1 ), .C(\counter[5]_net_1 ), .Y(counter14_4));
    NOR2B un5_counter_1_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_7));
    AX1C clock_out_RNO (.A(counter14_3), .B(counter14_4), .C(clock_out)
        , .Y(clock_out_RNO_net_1));
    AND3 un5_counter_1_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    AND3 un5_counter_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\counter[6]_net_1 ), .Y(N_2));
    GND GND_i (.Y(GND));
    XOR2 un5_counter_1_I_14 (.A(N_4), .B(\counter[5]_net_1 ), .Y(I_14));
    XOR2 un5_counter_1_I_17 (.A(N_3), .B(\counter[6]_net_1 ), .Y(I_17));
    NOR3 \counter_RNIFVEB1[7]  (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[3]_net_1 ), .Y(counter14_3));
    NOR2 \counter_RNIF4VS[1]  (.A(\counter[4]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(counter14_2));
    DFN1C0 \counter[6]  (.D(I_17), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[6]_net_1 ));
    DFN1C0 clock_out_inst_1 (.D(clock_out_RNO_net_1), .CLK(GLA), .CLR(
        reset_c), .Q(clock_out));
    AND3 un5_counter_1_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    AND2 un5_counter_1_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    DFN1C0 \counter[7]  (.D(I_20), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[7]_net_1 ));
    DFN1C0 \counter[5]  (.D(I_14), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[5]_net_1 ));
    DFN1C0 \counter[4]  (.D(I_12), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[4]_net_1 ));
    
endmodule


module pll_core(
       clock_c,
       GLA
    );
input  clock_c;
output GLA;

    wire CLKAP, Core_GLB, Core_GLC, LOCK, Core_YB, Core_YC, 
        pll_core_GND, pll_core_VCC;
    
    PLL #( .VCOFREQUENCY(100.000000) )  Core (.CLKA(CLKAP), .EXTFB(
        pll_core_GND), .POWERDOWN(pll_core_VCC), .GLA(GLA), .LOCK(LOCK)
        , .GLB(Core_GLB), .YB(Core_YB), .GLC(Core_GLC), .YC(Core_YC), 
        .OADIV0(pll_core_GND), .OADIV1(pll_core_GND), .OADIV2(
        pll_core_GND), .OADIV3(pll_core_GND), .OADIV4(pll_core_GND), 
        .OAMUX0(pll_core_GND), .OAMUX1(pll_core_GND), .OAMUX2(
        pll_core_VCC), .DLYGLA0(pll_core_GND), .DLYGLA1(pll_core_GND), 
        .DLYGLA2(pll_core_GND), .DLYGLA3(pll_core_GND), .DLYGLA4(
        pll_core_GND), .OBDIV0(pll_core_GND), .OBDIV1(pll_core_GND), 
        .OBDIV2(pll_core_GND), .OBDIV3(pll_core_GND), .OBDIV4(
        pll_core_GND), .OBMUX0(pll_core_GND), .OBMUX1(pll_core_GND), 
        .OBMUX2(pll_core_GND), .DLYYB0(pll_core_GND), .DLYYB1(
        pll_core_GND), .DLYYB2(pll_core_GND), .DLYYB3(pll_core_GND), 
        .DLYYB4(pll_core_GND), .DLYGLB0(pll_core_GND), .DLYGLB1(
        pll_core_GND), .DLYGLB2(pll_core_GND), .DLYGLB3(pll_core_GND), 
        .DLYGLB4(pll_core_GND), .OCDIV0(pll_core_GND), .OCDIV1(
        pll_core_GND), .OCDIV2(pll_core_GND), .OCDIV3(pll_core_GND), 
        .OCDIV4(pll_core_GND), .OCMUX0(pll_core_GND), .OCMUX1(
        pll_core_GND), .OCMUX2(pll_core_GND), .DLYYC0(pll_core_GND), 
        .DLYYC1(pll_core_GND), .DLYYC2(pll_core_GND), .DLYYC3(
        pll_core_GND), .DLYYC4(pll_core_GND), .DLYGLC0(pll_core_GND), 
        .DLYGLC1(pll_core_GND), .DLYGLC2(pll_core_GND), .DLYGLC3(
        pll_core_GND), .DLYGLC4(pll_core_GND), .FINDIV0(pll_core_VCC), 
        .FINDIV1(pll_core_VCC), .FINDIV2(pll_core_GND), .FINDIV3(
        pll_core_GND), .FINDIV4(pll_core_GND), .FINDIV5(pll_core_GND), 
        .FINDIV6(pll_core_GND), .FBDIV0(pll_core_VCC), .FBDIV1(
        pll_core_VCC), .FBDIV2(pll_core_GND), .FBDIV3(pll_core_GND), 
        .FBDIV4(pll_core_VCC), .FBDIV5(pll_core_GND), .FBDIV6(
        pll_core_GND), .FBDLY0(pll_core_GND), .FBDLY1(pll_core_GND), 
        .FBDLY2(pll_core_GND), .FBDLY3(pll_core_GND), .FBDLY4(
        pll_core_GND), .FBSEL0(pll_core_VCC), .FBSEL1(pll_core_GND), 
        .XDLYSEL(pll_core_GND), .VCOSEL0(pll_core_GND), .VCOSEL1(
        pll_core_GND), .VCOSEL2(pll_core_VCC));
    PLLINT pllint1 (.A(clock_c), .Y(CLKAP));
    VCC VCC_i (.Y(pll_core_VCC));
    GND GND_i (.Y(pll_core_GND));
    
endmodule


module modulator(
       output_signal_c,
       reset_c,
       clock_out,
       trigger_signal_c
    );
output output_signal_c;
input  reset_c;
input  clock_out;
input  trigger_signal_c;

    wire output_signal_1_sqmuxa_i_3, output_signal_1_sqmuxa_i_1, N_147, 
        N_148, \clock_counter[14]_net_1 , \clock_counter[15]_net_1 , 
        N_36_3, output_signal_1_sqmuxa_i_a2_2, 
        output_signal_1_sqmuxa_i_a2_1, \clock_counter[9]_net_1 , 
        \clock_counter[10]_net_1 , un6lto11, un6lto12, 
        output_signal_1_sqmuxa_i_a2_0_2, \clock_counter[6]_net_1 , 
        \clock_counter[8]_net_1 , output_signal_1_sqmuxa_i_a2_0_1, 
        \clock_counter[4]_net_1 , \clock_counter[5]_net_1 , 
        counter_n1_i_0, \counter[0]_net_1 , \counter[1]_net_1 , 
        output_signal_1_sqmuxa_i_a2_3_0, 
        output_signal_1_sqmuxa_i_a2_2_0, un6lto7, 
        clock_counterlde_0_a2_1, \counter[4]_net_1 , 
        \counter[5]_net_1 , counter_0_sqmuxa_i_a2_0, N_123_1, 
        output_signal_1_sqmuxa_i_o2_0, \clock_counter[3]_net_1 , 
        \clock_counter[2]_net_1 , N_19, N_53, N_21, N_43, N_27, N_40, 
        N_29, N_39, N_31, N_51, N_55, N_36, N_146, N_145, N_47, N_45, 
        N_150, N_17, N_46, N_137, N_25, N_41, N_23, N_42, N_151, 
        \counter[3]_net_1 , \counter[2]_net_1 , N_5, counter_n5, 
        counter_44_0, N_8, counter_n4, counter_c3, counter_n3, 
        counter_c2, counter_n2, counter_c1, N_144, 
        \clock_counter[0]_net_1 , \clock_counter[1]_net_1 , 
        \clock_counter[13]_net_1 , N_91, N_52, N_61, N_50, N_49, N_48, 
        clock_counter_n9, clock_counter_n10, clock_counter_n11, 
        clock_counter_n12, clock_counter_n13, clock_counter_n14, 
        clock_counter_n15, counter_n0, clock_countere, GND, VCC;
    
    OR2 \clock_counter_RNIJ3G2[2]  (.A(\clock_counter[3]_net_1 ), .B(
        \clock_counter[2]_net_1 ), .Y(output_signal_1_sqmuxa_i_o2_0));
    DFN1E1C0 \clock_counter[6]  (.D(N_21), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[6]_net_1 ));
    XA1A \clock_counter_RNO[4]  (.A(\clock_counter[4]_net_1 ), .B(N_41)
        , .C(trigger_signal_c), .Y(N_25));
    NOR2B \counter_RNINTKF1[2]  (.A(counter_c1), .B(\counter[2]_net_1 )
        , .Y(counter_c2));
    DFN1E1C0 \clock_counter[3]  (.D(N_27), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[3]_net_1 ));
    NOR3 \counter_RNIT3LF1[5]  (.A(\counter[4]_net_1 ), .B(
        \counter[5]_net_1 ), .C(\counter[0]_net_1 ), .Y(
        clock_counterlde_0_a2_1));
    DFN1E1C0 \clock_counter[4]  (.D(N_25), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[4]_net_1 ));
    DFN1E1C0 \clock_counter[8]  (.D(N_17), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[8]_net_1 ));
    DFN1C0 \counter[2]  (.D(counter_n2), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[2]_net_1 ));
    DFN1E1C0 \clock_counter[1]  (.D(N_31), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[1]_net_1 ));
    DFN1E1C0 \clock_counter[0]  (.D(N_144), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[0]_net_1 ));
    NOR2A output_signal_RNO_7 (.A(output_signal_1_sqmuxa_i_a2_3_0), .B(
        N_55), .Y(N_150));
    OR2A \clock_counter_RNI6GO8[6]  (.A(\clock_counter[6]_net_1 ), .B(
        N_43), .Y(N_53));
    OR2A \clock_counter_RNI2305[3]  (.A(\clock_counter[3]_net_1 ), .B(
        N_40), .Y(N_41));
    NOR2A \counter_RNO[0]  (.A(trigger_signal_c), .B(
        \counter[0]_net_1 ), .Y(counter_n0));
    OR2A \clock_counter_RNI41VU[11]  (.A(un6lto11), .B(N_48), .Y(N_49));
    XA1B \counter_RNO[4]  (.A(\counter[4]_net_1 ), .B(counter_c3), .C(
        N_8), .Y(counter_n4));
    OR2A \clock_counter_RNID686[4]  (.A(\clock_counter[4]_net_1 ), .B(
        N_41), .Y(N_42));
    VCC VCC_i (.Y(VCC));
    NOR2A \clock_counter_RNO[0]  (.A(trigger_signal_c), .B(
        \clock_counter[0]_net_1 ), .Y(N_144));
    OR2 \clock_counter_RNI3U8B[6]  (.A(N_45), .B(N_43), .Y(N_46));
    XAI1 \counter_RNO_0[1]  (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(trigger_signal_c), .Y(counter_n1_i_0));
    AOI1 \counter_RNO[1]  (.A(N_123_1), .B(N_151), .C(counter_n1_i_0), 
        .Y(N_5));
    DFN1E1C0 \clock_counter[9]  (.D(clock_counter_n9), .CLK(clock_out), 
        .CLR(reset_c), .E(clock_countere), .Q(\clock_counter[9]_net_1 )
        );
    DFN1E1C0 \clock_counter[15]  (.D(clock_counter_n15), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(
        \clock_counter[15]_net_1 ));
    XA1A \clock_counter_RNO[12]  (.A(un6lto12), .B(N_49), .C(
        trigger_signal_c), .Y(clock_counter_n12));
    XA1A \clock_counter_RNO[13]  (.A(\clock_counter[13]_net_1 ), .B(
        N_50), .C(trigger_signal_c), .Y(clock_counter_n13));
    AO1B \counter_RNISQHA3[0]  (.A(counter_0_sqmuxa_i_a2_0), .B(N_151), 
        .C(trigger_signal_c), .Y(N_8));
    OA1 output_signal_RNO_2 (.A(N_45), .B(N_150), .C(
        output_signal_1_sqmuxa_i_a2_2), .Y(N_145));
    XA1A \clock_counter_RNO[14]  (.A(\clock_counter[14]_net_1 ), .B(
        N_52), .C(trigger_signal_c), .Y(clock_counter_n14));
    DFN1E1C0 \clock_counter[5]  (.D(N_23), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[5]_net_1 ));
    OR2A output_signal_RNO_10 (.A(trigger_signal_c), .B(
        \clock_counter[13]_net_1 ), .Y(N_36_3));
    OR3 output_signal_RNO_4 (.A(\clock_counter[14]_net_1 ), .B(
        \clock_counter[15]_net_1 ), .C(N_36_3), .Y(
        output_signal_1_sqmuxa_i_1));
    XA1A \clock_counter_RNO[5]  (.A(\clock_counter[5]_net_1 ), .B(N_42)
        , .C(trigger_signal_c), .Y(N_23));
    OR2 \clock_counter_RNIFVF2_0[1]  (.A(\clock_counter[1]_net_1 ), .B(
        \clock_counter[0]_net_1 ), .Y(N_51));
    NOR2B \counter_RNI1ROV[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(N_123_1));
    OR2A \clock_counter_RNO_0[15]  (.A(\clock_counter[14]_net_1 ), .B(
        N_52), .Y(N_91));
    NOR2 output_signal_RNO_12 (.A(\clock_counter[5]_net_1 ), .B(
        \clock_counter[4]_net_1 ), .Y(output_signal_1_sqmuxa_i_a2_3_0));
    DFN1C0 \counter[4]  (.D(counter_n4), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[4]_net_1 ));
    DFN1C0 \counter[5]  (.D(counter_n5), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[5]_net_1 ));
    OR2 \clock_counter_RNI2305[2]  (.A(output_signal_1_sqmuxa_i_o2_0), 
        .B(N_51), .Y(N_55));
    XA1A \clock_counter_RNO[10]  (.A(\clock_counter[10]_net_1 ), .B(
        N_61), .C(trigger_signal_c), .Y(clock_counter_n10));
    XA1B \counter_RNO[2]  (.A(\counter[2]_net_1 ), .B(counter_c1), .C(
        N_8), .Y(counter_n2));
    OR2 \clock_counter_RNIB3OL[10]  (.A(N_47), .B(N_46), .Y(N_48));
    NOR2B output_signal_RNO_5 (.A(un6lto11), .B(un6lto12), .Y(N_147));
    NOR3 output_signal_RNO (.A(N_146), .B(output_signal_1_sqmuxa_i_3), 
        .C(N_145), .Y(N_36));
    GND GND_i (.Y(GND));
    XA1B \counter_RNO[5]  (.A(\counter[5]_net_1 ), .B(counter_44_0), 
        .C(N_8), .Y(counter_n5));
    XA1B \counter_RNO[3]  (.A(\counter[3]_net_1 ), .B(counter_c2), .C(
        N_8), .Y(counter_n3));
    NOR2B \counter_RNIPIOV[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(counter_c1));
    OR2A \clock_counter_RNO_0[10]  (.A(\clock_counter[9]_net_1 ), .B(
        N_46), .Y(N_61));
    OR2B \clock_counter_RNIFVF2[1]  (.A(\clock_counter[1]_net_1 ), .B(
        \clock_counter[0]_net_1 ), .Y(N_39));
    NOR2B output_signal_RNO_11 (.A(\clock_counter[8]_net_1 ), .B(
        un6lto7), .Y(output_signal_1_sqmuxa_i_a2_2_0));
    DFN1C0 \counter[1]  (.D(N_5), .CLK(clock_out), .CLR(reset_c), .Q(
        \counter[1]_net_1 ));
    XA1A \clock_counter_RNO[3]  (.A(\clock_counter[3]_net_1 ), .B(N_40)
        , .C(trigger_signal_c), .Y(N_27));
    DFN1E1C0 \clock_counter[2]  (.D(N_29), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(\clock_counter[2]_net_1 ));
    OR3 output_signal_RNO_1 (.A(output_signal_1_sqmuxa_i_1), .B(N_147), 
        .C(N_148), .Y(output_signal_1_sqmuxa_i_3));
    NOR2B \counter_RNO_0[5]  (.A(\counter[4]_net_1 ), .B(counter_c3), 
        .Y(counter_44_0));
    DFN1C0 \counter[3]  (.D(counter_n3), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[3]_net_1 ));
    AO1B \counter_RNISQHA3[5]  (.A(clock_counterlde_0_a2_1), .B(N_151), 
        .C(trigger_signal_c), .Y(clock_countere));
    NOR3 \counter_RNIQ0LF1[1]  (.A(\counter[3]_net_1 ), .B(
        \counter[2]_net_1 ), .C(\counter[1]_net_1 ), .Y(N_151));
    DFN1E1C0 \clock_counter[7]  (.D(N_19), .CLK(clock_out), .CLR(
        reset_c), .E(clock_countere), .Q(un6lto7));
    DFN1E1C0 \clock_counter[14]  (.D(clock_counter_n14), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(
        \clock_counter[14]_net_1 ));
    XA1A \clock_counter_RNO[7]  (.A(un6lto7), .B(N_53), .C(
        trigger_signal_c), .Y(N_19));
    NOR3A output_signal_RNO_8 (.A(output_signal_1_sqmuxa_i_a2_1), .B(
        \clock_counter[9]_net_1 ), .C(\clock_counter[10]_net_1 ), .Y(
        output_signal_1_sqmuxa_i_a2_2));
    NOR2B \counter_RNIT3LF1[0]  (.A(\counter[0]_net_1 ), .B(N_123_1), 
        .Y(counter_0_sqmuxa_i_a2_0));
    OA1C \clock_counter_RNO_0[8]  (.A(un6lto7), .B(N_53), .C(
        \clock_counter[8]_net_1 ), .Y(N_137));
    OR2A \clock_counter_RNIO0O3[2]  (.A(\clock_counter[2]_net_1 ), .B(
        N_39), .Y(N_40));
    OR3C \clock_counter_RNIAJO3[6]  (.A(\clock_counter[6]_net_1 ), .B(
        \clock_counter[8]_net_1 ), .C(un6lto7), .Y(N_45));
    DFN1E1C0 \clock_counter[12]  (.D(clock_counter_n12), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(un6lto12));
    NOR3B output_signal_RNO_0 (.A(N_55), .B(
        output_signal_1_sqmuxa_i_a2_0_2), .C(N_47), .Y(N_146));
    NOR3B \clock_counter_RNO[8]  (.A(N_46), .B(trigger_signal_c), .C(
        N_137), .Y(N_17));
    NOR3C output_signal_RNO_9 (.A(\clock_counter[4]_net_1 ), .B(
        \clock_counter[5]_net_1 ), .C(un6lto12), .Y(
        output_signal_1_sqmuxa_i_a2_0_1));
    DFN1E1C0 output_signal (.D(N_36), .CLK(clock_out), .CLR(reset_c), 
        .E(clock_countere), .Q(output_signal_c));
    OR2A \clock_counter_RNIUV581[12]  (.A(un6lto12), .B(N_49), .Y(N_50)
        );
    OR2A \clock_counter_RNIPAG7[5]  (.A(\clock_counter[5]_net_1 ), .B(
        N_42), .Y(N_43));
    DFN1E1C0 \clock_counter[13]  (.D(clock_counter_n13), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(
        \clock_counter[13]_net_1 ));
    XA1A \clock_counter_RNO[9]  (.A(\clock_counter[9]_net_1 ), .B(N_46)
        , .C(trigger_signal_c), .Y(clock_counter_n9));
    XA1A \clock_counter_RNO[11]  (.A(un6lto11), .B(N_48), .C(
        trigger_signal_c), .Y(clock_counter_n11));
    DFN1E1C0 \clock_counter[11]  (.D(clock_counter_n11), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(un6lto11));
    NOR3C output_signal_RNO_3 (.A(\clock_counter[6]_net_1 ), .B(
        \clock_counter[8]_net_1 ), .C(output_signal_1_sqmuxa_i_a2_0_1), 
        .Y(output_signal_1_sqmuxa_i_a2_0_2));
    NOR3C \clock_counter_RNO[1]  (.A(N_51), .B(trigger_signal_c), .C(
        N_39), .Y(N_31));
    OR2A \clock_counter_RNIPVCH1[13]  (.A(\clock_counter[13]_net_1 ), 
        .B(N_50), .Y(N_52));
    NOR3B output_signal_RNO_6 (.A(output_signal_1_sqmuxa_i_a2_2_0), .B(
        un6lto12), .C(N_47), .Y(N_148));
    XA1A \clock_counter_RNO[15]  (.A(\clock_counter[15]_net_1 ), .B(
        N_91), .C(trigger_signal_c), .Y(clock_counter_n15));
    DFN1E1C0 \clock_counter[10]  (.D(clock_counter_n10), .CLK(
        clock_out), .CLR(reset_c), .E(clock_countere), .Q(
        \clock_counter[10]_net_1 ));
    XA1A \clock_counter_RNO[2]  (.A(\clock_counter[2]_net_1 ), .B(N_39)
        , .C(trigger_signal_c), .Y(N_29));
    NOR2B \counter_RNIM9HV1[3]  (.A(counter_c2), .B(\counter[3]_net_1 )
        , .Y(counter_c3));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(clock_out), .CLR(reset_c)
        , .Q(\counter[0]_net_1 ));
    XA1A \clock_counter_RNO[6]  (.A(N_43), .B(\clock_counter[6]_net_1 )
        , .C(trigger_signal_c), .Y(N_21));
    NOR2 output_signal_RNO_13 (.A(un6lto11), .B(un6lto12), .Y(
        output_signal_1_sqmuxa_i_a2_1));
    OR2B \clock_counter_RNI85FA[10]  (.A(\clock_counter[10]_net_1 ), 
        .B(\clock_counter[9]_net_1 ), .Y(N_47));
    
endmodule


module top(
       clock,
       input_data,
       insig,
       reset,
       trigger_signal,
       RSS_EN,
       clock_out,
       output_data_rate,
       output_signal,
       ref_signal,
       signal_into_switch
    );
input  clock;
input  [9:0] input_data;
input  insig;
input  reset;
input  trigger_signal;
output RSS_EN;
output clock_out;
output output_data_rate;
output output_signal;
output ref_signal;
output signal_into_switch;

    wire AND2_0_Y, AND2_1_Y, Y, INV_1_Y, AND2_2_Y, data_path_signal, 
        AND2_3_Y, INV_2_Y, GLA, GND, clock_c, reset_c, 
        trigger_signal_c, VCC, clock_out_c, output_signal_c, 
        clock_out_net_1, signal_into_switch_c;
    
    dbpsk_modulator dbpsk_modulator_0 (.reset_c(reset_c), .clock_out(
        clock_out_net_1), .output_signal_c(output_signal_c));
    AND2 AND2_0 (.A(clock_out_net_1), .B(GND), .Y(AND2_0_Y));
    INV INV_0 (.A(clock_out_net_1), .Y(Y));
    AND2 AND2_3 (.A(clock_out_net_1), .B(INV_2_Y), .Y(AND2_3_Y));
    OUTBUF ref_signal_pad (.D(clock_out_net_1), .PAD(ref_signal));
    AND2 AND2_1 (.A(Y), .B(INV_1_Y), .Y(AND2_1_Y));
    two_mhz_clock two_mhz_clock_0 (.reset_c(reset_c), .GLA(GLA), 
        .clock_out_c(clock_out_c));
    VCC VCC_i (.Y(VCC));
    main_clock main_clock_0 (.clock_out(clock_out_net_1), .reset_c(
        reset_c), .GLA(GLA));
    pll_core pll_core_0 (.clock_c(clock_c), .GLA(GLA));
    OR2 OR2_1 (.A(AND2_2_Y), .B(AND2_3_Y), .Y(signal_into_switch_c));
    modulator modulator_0 (.output_signal_c(output_signal_c), .reset_c(
        reset_c), .clock_out(clock_out_net_1), .trigger_signal_c(
        trigger_signal_c));
    GND GND_i (.Y(GND));
    INBUF trigger_signal_pad (.PAD(trigger_signal), .Y(
        trigger_signal_c));
    CLKBUF reset_pad (.PAD(reset), .Y(reset_c));
    OUTBUF output_data_rate_pad (.D(GND), .PAD(output_data_rate));
    INV INV_1 (.A(GND), .Y(INV_1_Y));
    OUTBUF RSS_EN_pad (.D(VCC), .PAD(RSS_EN));
    OUTBUF clock_out_pad (.D(clock_out_c), .PAD(clock_out));
    AND2 AND2_2 (.A(data_path_signal), .B(output_signal_c), .Y(
        AND2_2_Y));
    OUTBUF signal_into_switch_pad (.D(signal_into_switch_c), .PAD(
        signal_into_switch));
    OUTBUF output_signal_pad (.D(output_signal_c), .PAD(output_signal));
    INV INV_2 (.A(output_signal_c), .Y(INV_2_Y));
    OR2 OR2_0 (.A(AND2_0_Y), .B(AND2_1_Y), .Y(data_path_signal));
    INBUF clock_pad (.PAD(clock), .Y(clock_c));
    
endmodule
