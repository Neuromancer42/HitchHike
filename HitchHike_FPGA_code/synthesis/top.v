`timescale 1 ns/100 ps
// Version: v11.8 SP2 11.8.2.4


module dbpsk_modulator(
       reset_c,
       ref_signal_c,
       output_data_rate_c,
       whitening_0_output_whitening,
       output_signal_c
    );
input  reset_c;
input  ref_signal_c;
output output_data_rate_c;
input  whitening_0_output_whitening;
input  output_signal_c;

    wire counter_n5_i_0, counter_n5_i_a3_0_0, N_123, counter_n4_i_0, 
        N_105, counter_n1_i_1, \counter_i_0[1] , \counter[0]_net_1 , 
        counter_n4_i_a3_0_0, \counter[5]_net_1 , counter_n1_i_a3_0, 
        \counter[4]_net_1 , output_dbpsk_0_sqmuxa_i_a2_8, 
        output_dbpsk_0_sqmuxa_i_a2_5, \counter[12]_net_1 , 
        \counter[10]_net_1 , output_dbpsk_0_sqmuxa_i_a2_7, 
        \counter_i_0[6] , output_dbpsk_0_sqmuxa_i_a2_3, 
        \counter[15]_net_1 , output_dbpsk_0_sqmuxa_i_a2_6, 
        \counter_i_0[3] , \counter_i_0[8] , 
        output_dbpsk_0_sqmuxa_i_a2_1, \counter[13]_net_1 , 
        \counter[14]_net_1 , \counter[9]_net_1 , \counter[11]_net_1 , 
        \counter_i_0[2] , \counter_i_0[7] , 
        output_dbpsk_0_sqmuxa_i_a3_2, output_dbpsk_0_sqmuxa_i_a3_1, 
        N_122, output_dbpsk_0_sqmuxa_i_a3_0, N_106, N_17, N_32, N_19, 
        N_25, N_23, N_29, N_21, N_30, N_15, N_33, N_13, N_34, N_11, 
        N_35, N_42, N_41, N_40, N_39, N_38, N_37, N_36, N_28, 
        counter_n9, counter_n10, counter_n11, counter_n12, counter_n13, 
        counter_n14, counter_n15, counter_n0, output_dbpsk_5, GND, VCC;
    
    NOR2 output_dbpsk_RNO_3 (.A(\counter[4]_net_1 ), .B(
        \counter[5]_net_1 ), .Y(output_dbpsk_0_sqmuxa_i_a3_0));
    XAI1A \counter_RNO_1[1]  (.A(\counter_i_0[1] ), .B(
        \counter[0]_net_1 ), .C(output_signal_c), .Y(counter_n1_i_1));
    XA1A \counter_RNO[12]  (.A(\counter[12]_net_1 ), .B(N_39), .C(
        output_signal_c), .Y(counter_n12));
    DFN1E1C0 output_dbpsk (.D(output_dbpsk_5), .CLK(ref_signal_c), 
        .CLR(reset_c), .E(N_28), .Q(output_data_rate_c));
    DFN1P0 \counter[2]  (.D(N_23), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[2] ));
    NOR3B output_dbpsk_RNO_2 (.A(\counter_i_0[1] ), .B(
        output_dbpsk_0_sqmuxa_i_a3_0), .C(\counter[0]_net_1 ), .Y(
        output_dbpsk_0_sqmuxa_i_a3_1));
    DFN1P0 \counter[7]  (.D(N_13), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[7] ));
    NOR2B \counter_RNO_2[4]  (.A(\counter_i_0[1] ), .B(
        \counter[5]_net_1 ), .Y(counter_n4_i_a3_0_0));
    NOR2A \counter_RNO[0]  (.A(output_signal_c), .B(\counter[0]_net_1 )
        , .Y(counter_n0));
    DFN1P0 \counter[6]  (.D(N_15), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[6] ));
    NOR3A \counter_RNO[4]  (.A(N_32), .B(N_106), .C(counter_n4_i_0), 
        .Y(N_19));
    VCC VCC_i (.Y(VCC));
    OR2 \counter_RNIGL45[2]  (.A(N_29), .B(\counter_i_0[2] ), .Y(N_30));
    DFN1P0 \counter[8]  (.D(N_11), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[8] ));
    AO1B output_dbpsk_RNO_0 (.A(output_dbpsk_0_sqmuxa_i_a3_2), .B(
        whitening_0_output_whitening), .C(output_signal_c), .Y(N_28));
    NOR2B \counter_RNO_0[1]  (.A(\counter[4]_net_1 ), .B(
        \counter[5]_net_1 ), .Y(counter_n1_i_a3_0));
    NOR2B \counter_RNI70E3[2]  (.A(\counter_i_0[2] ), .B(
        \counter_i_0[7] ), .Y(output_dbpsk_0_sqmuxa_i_a2_1));
    AO1 \counter_RNO[1]  (.A(counter_n1_i_a3_0), .B(N_123), .C(
        counter_n1_i_1), .Y(N_25));
    NOR3A \counter_RNI9D821[10]  (.A(output_dbpsk_0_sqmuxa_i_a2_5), .B(
        \counter[12]_net_1 ), .C(\counter[10]_net_1 ), .Y(
        output_dbpsk_0_sqmuxa_i_a2_8));
    DFN1C0 \counter[15]  (.D(counter_n15), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[15]_net_1 ));
    OR2A \counter_RNI32OP[10]  (.A(\counter[10]_net_1 ), .B(N_37), .Y(
        N_38));
    OR2A \counter_RNI316H[9]  (.A(\counter[9]_net_1 ), .B(N_36), .Y(
        N_37));
    DFN1C0 \counter[14]  (.D(counter_n14), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[14]_net_1 ));
    XAI1 \counter_RNO[8]  (.A(\counter_i_0[8] ), .B(N_35), .C(
        output_signal_c), .Y(N_11));
    XA1A \counter_RNO[14]  (.A(\counter[14]_net_1 ), .B(N_41), .C(
        output_signal_c), .Y(counter_n14));
    XA1A \counter_RNO[11]  (.A(\counter[11]_net_1 ), .B(N_38), .C(
        output_signal_c), .Y(counter_n11));
    DFN1C0 \counter[4]  (.D(N_19), .CLK(ref_signal_c), .CLR(reset_c), 
        .Q(\counter[4]_net_1 ));
    OA1B \counter_RNO_3[4]  (.A(\counter_i_0[3] ), .B(N_30), .C(
        \counter[4]_net_1 ), .Y(N_105));
    OR2A \counter_RNIVND3[0]  (.A(\counter[0]_net_1 ), .B(
        \counter_i_0[1] ), .Y(N_29));
    DFN1C0 \counter[5]  (.D(N_17), .CLK(ref_signal_c), .CLR(reset_c), 
        .Q(\counter[5]_net_1 ));
    OR2A \counter_RNI9BEJ1[13]  (.A(\counter[13]_net_1 ), .B(N_40), .Y(
        N_41));
    NOR2 \counter_RNI794H[13]  (.A(\counter[13]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(output_dbpsk_0_sqmuxa_i_a2_5));
    XAI1 \counter_RNO[2]  (.A(\counter_i_0[2] ), .B(N_29), .C(
        output_signal_c), .Y(N_23));
    NOR2B \counter_RNO_1[5]  (.A(\counter_i_0[1] ), .B(
        \counter[4]_net_1 ), .Y(counter_n5_i_a3_0_0));
    GND GND_i (.Y(GND));
    XA1C \counter_RNO[5]  (.A(\counter[5]_net_1 ), .B(N_32), .C(
        counter_n5_i_0), .Y(N_17));
    XAI1 \counter_RNO[3]  (.A(\counter_i_0[3] ), .B(N_30), .C(
        output_signal_c), .Y(N_21));
    DFN1C0 \counter[12]  (.D(counter_n12), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[12]_net_1 ));
    DFN1P0 \counter[1]  (.D(N_25), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[1] ));
    OR2 \counter_RNIKOND[7]  (.A(N_34), .B(\counter_i_0[7] ), .Y(N_35));
    AO1B \counter_RNO_0[5]  (.A(counter_n5_i_a3_0_0), .B(N_123), .C(
        output_signal_c), .Y(counter_n5_i_0));
    OR2 \counter_RNIUL0C[6]  (.A(N_33), .B(\counter_i_0[6] ), .Y(N_34));
    DFN1P0 \counter[3]  (.D(N_21), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[3] ));
    XAI1 \counter_RNO[6]  (.A(\counter_i_0[6] ), .B(N_33), .C(
        output_signal_c), .Y(N_15));
    OR3A \counter_RNILJI8[3]  (.A(\counter[4]_net_1 ), .B(
        \counter_i_0[3] ), .C(N_30), .Y(N_32));
    NOR2B output_dbpsk_RNO_1 (.A(output_dbpsk_0_sqmuxa_i_a3_1), .B(
        N_122), .Y(output_dbpsk_0_sqmuxa_i_a3_2));
    XA1A \counter_RNO[13]  (.A(\counter[13]_net_1 ), .B(N_40), .C(
        output_signal_c), .Y(counter_n13));
    OR2 \counter_RNIBSEF[8]  (.A(N_35), .B(\counter_i_0[8] ), .Y(N_36));
    XA1A \counter_RNO[9]  (.A(\counter[9]_net_1 ), .B(N_36), .C(
        output_signal_c), .Y(counter_n9));
    NOR3B \counter_RNIJEIK[15]  (.A(\counter_i_0[6] ), .B(
        output_dbpsk_0_sqmuxa_i_a2_3), .C(\counter[15]_net_1 ), .Y(
        output_dbpsk_0_sqmuxa_i_a2_7));
    OR2A \counter_RNI44A21[11]  (.A(\counter[11]_net_1 ), .B(N_38), .Y(
        N_39));
    OR2A \counter_RNI9K9A[5]  (.A(\counter[5]_net_1 ), .B(N_32), .Y(
        N_33));
    NOR3C \counter_RNICUMT1[8]  (.A(output_dbpsk_0_sqmuxa_i_a2_7), .B(
        output_dbpsk_0_sqmuxa_i_a2_6), .C(output_dbpsk_0_sqmuxa_i_a2_8)
        , .Y(N_122));
    DFN1C0 \counter[11]  (.D(counter_n11), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[11]_net_1 ));
    OR2A \counter_RNO_0[15]  (.A(\counter[14]_net_1 ), .B(N_41), .Y(
        N_42));
    XA1A \counter_RNO[15]  (.A(\counter[15]_net_1 ), .B(N_42), .C(
        output_signal_c), .Y(counter_n15));
    OR2A \counter_RNO_1[4]  (.A(output_signal_c), .B(N_105), .Y(
        counter_n4_i_0));
    NOR2B \counter_RNO_0[4]  (.A(counter_n4_i_a3_0_0), .B(N_123), .Y(
        N_106));
    NOR2B \counter_RNIRPDV1[0]  (.A(N_122), .B(\counter[0]_net_1 ), .Y(
        N_123));
    OR2A \counter_RNI67SA1[12]  (.A(\counter[12]_net_1 ), .B(N_39), .Y(
        N_40));
    XAI1 \counter_RNO[7]  (.A(\counter_i_0[7] ), .B(N_34), .C(
        output_signal_c), .Y(N_13));
    NOR3C \counter_RNIG2S6[8]  (.A(\counter_i_0[3] ), .B(
        \counter_i_0[8] ), .C(output_dbpsk_0_sqmuxa_i_a2_1), .Y(
        output_dbpsk_0_sqmuxa_i_a2_6));
    NOR2A output_dbpsk_RNO (.A(output_signal_c), .B(output_data_rate_c)
        , .Y(output_dbpsk_5));
    XA1A \counter_RNO[10]  (.A(\counter[10]_net_1 ), .B(N_37), .C(
        output_signal_c), .Y(counter_n10));
    DFN1C0 \counter[13]  (.D(counter_n13), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[13]_net_1 ));
    NOR2 \counter_RNIP69A[9]  (.A(\counter[9]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(output_dbpsk_0_sqmuxa_i_a2_3));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(counter_n10), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(counter_n9), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[9]_net_1 ));
    
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


module whitening(
       whitening_0_output_whitening,
       reset_c,
       ref_signal_c,
       data_source_0_output_data,
       output_signal_c
    );
output whitening_0_output_whitening;
input  reset_c;
input  ref_signal_c;
input  data_source_0_output_data;
input  output_signal_c;

    wire N_15, \output_counter[1]_net_1 , \output_counter[0]_net_1 , 
        N_13, \output_counter[3]_net_1 , \DWACT_FINC_E[0] , N_8, 
        \output_counter[8]_net_1 , \DWACT_FINC_E[4] , N_5, 
        \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , counter_n1_i_1, 
        \counter[0]_net_1 , \counter_i_0[1] , counter_n1_i_a3_0_0, 
        \counter[5]_net_1 , \counter[4]_net_1 , state_1_sqmuxa_i_a3_1, 
        output_counter17_13, output_counter17_5, output_counter17_4, 
        output_counter17_11, output_counter17_12, output_counter17_1, 
        output_counter17_0, output_counter17_9, 
        \output_counter[4]_net_1 , output_counter17_7, 
        \output_counter[5]_net_1 , output_counter17_2, 
        \output_counter[2]_net_1 , \output_counter[6]_net_1 , 
        \output_counter[12]_net_1 , \output_counter[9]_net_1 , 
        \output_counter[10]_net_1 , \output_counter[7]_net_1 , 
        \output_counter[11]_net_1 , \output_counter[13]_net_1 , 
        \output_counter[15]_net_1 , \output_counter[14]_net_1 , 
        counter_n5_i_a2_0_9, counter_n5_i_a2_0_6, \counter[12]_net_1 , 
        \counter[9]_net_1 , counter_n5_i_a2_0_8, \counter_i_0[2] , 
        counter_n5_i_a2_0_4, \counter[14]_net_1 , counter_n5_i_a2_0_7, 
        \counter_i_0[3] , \counter_i_0[6] , counter_n5_i_a2_0_2, 
        \counter[15]_net_1 , \counter[11]_net_1 , \counter[13]_net_1 , 
        \counter[10]_net_1 , \counter_i_0[8] , \counter_i_0[7] , 
        output_counter21_13, output_counter21_11, output_counter21_12, 
        output_counter21_9, output_counter21_7, 
        output_whitening_4_i_x2_0, \state[6]_net_1 , \state[3]_net_1 , 
        N_114, \counter_RNI3P3V3[2]_net_1 , N_115, N_25, N_23, N_37, 
        N_21, N_38, N_19, N_65_i, N_17, N_66_i, N_15_0, N_41, N_13_0, 
        N_42, N_11, N_43, N_40, N_51, N_49, N_48, N_47, N_46, N_45, 
        N_44, N_34, N_32, N_30, N_28, counter_n9, counter_n10, 
        counter_n11, counter_n12, counter_n13, counter_n14, 
        counter_n15, counter_n0, \state_22[6] , \state[5]_net_1 , 
        \state_22[5] , \state[4]_net_1 , \state_22[3] , 
        \state[2]_net_1 , \state_22[2] , \state[1]_net_1 , 
        \state_22[1] , \state[0]_net_1 , \output_counter_5[5] , I_14_1, 
        \output_counter_5[4] , I_12_1, \output_counter_5[1] , I_5_1, 
        output_whitening_1_sqmuxa, I_4_0, I_7_1, I_9_1, I_17_1, I_20_1, 
        I_23_0, I_26_0, I_28_0, I_32_0, I_35, I_37, I_40, I_43, N_2, 
        \DWACT_FINC_E[9] , N_3, \DWACT_FINC_E[8] , N_4, N_6, 
        \DWACT_FINC_E[2] , \DWACT_FINC_E[5] , N_7, \DWACT_FINC_E[3] , 
        N_9, N_10, N_11_0, \DWACT_FINC_E[1] , N_12, N_14, GND, VCC;
    
    DFN1E1C0 \state[0]  (.D(N_30), .CLK(ref_signal_c), .CLR(reset_c), 
        .E(N_34), .Q(\state[0]_net_1 ));
    INV un2_output_counter_1_I_4 (.A(\output_counter[0]_net_1 ), .Y(
        I_4_0));
    NOR3C \output_counter_RNI2BF43[1]  (.A(output_counter17_5), .B(
        output_counter17_4), .C(output_counter17_11), .Y(
        output_counter17_13));
    OR2 \counter_RNICHD82[7]  (.A(N_42), .B(\counter_i_0[7] ), .Y(N_43)
        );
    NOR2B un2_output_counter_1_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_5));
    NOR2 \output_counter_RNIII7S[6]  (.A(\output_counter[8]_net_1 ), 
        .B(\output_counter[6]_net_1 ), .Y(output_counter17_5));
    DFN0E1C0 \output_counter[14]  (.D(I_40), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[14]_net_1 ));
    DFN0E1C0 \output_counter[13]  (.D(I_37), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[13]_net_1 ));
    XA1A \counter_RNO[11]  (.A(\counter[11]_net_1 ), .B(N_46), .C(
        output_signal_c), .Y(counter_n11));
    XOR2 un2_output_counter_1_I_37 (.A(N_4), .B(
        \output_counter[13]_net_1 ), .Y(I_37));
    NOR2 \output_counter_RNIS3PF[10]  (.A(\output_counter[10]_net_1 ), 
        .B(\output_counter[7]_net_1 ), .Y(output_counter17_2));
    DFN0E1C0 \output_counter[5]  (.D(\output_counter_5[5] ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(output_signal_c), .Q(
        \output_counter[5]_net_1 ));
    DFN1C0 \counter[11]  (.D(counter_n11), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[11]_net_1 ));
    DFN1E1C0 \state[6]  (.D(\state_22[6] ), .CLK(ref_signal_c), .CLR(
        reset_c), .E(N_34), .Q(\state[6]_net_1 ));
    DFN0E1C0 \output_counter[3]  (.D(I_9_1), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[3]_net_1 ));
    XOR2 un2_output_counter_1_I_28 (.A(N_7), .B(
        \output_counter[10]_net_1 ), .Y(I_28_0));
    XA1A \counter_RNO[15]  (.A(\counter[15]_net_1 ), .B(N_51), .C(
        output_signal_c), .Y(counter_n15));
    AND3 un2_output_counter_1_I_29 (.A(\output_counter[6]_net_1 ), .B(
        \output_counter[7]_net_1 ), .C(\output_counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    NOR2 \counter_RNI9P7L[10]  (.A(\counter[13]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(counter_n5_i_a2_0_4));
    XAI1 \counter_RNO[7]  (.A(\counter_i_0[7] ), .B(N_42), .C(
        output_signal_c), .Y(N_13_0));
    XOR2 un2_output_counter_1_I_43 (.A(N_2), .B(
        \output_counter[15]_net_1 ), .Y(I_43));
    DFN1P0 \counter[6]  (.D(N_15_0), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[6] ));
    DFN0E1C0 \output_counter[4]  (.D(\output_counter_5[4] ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(output_signal_c), .Q(
        \output_counter[4]_net_1 ));
    NOR3C \output_counter_RNI07MI1[2]  (.A(output_counter17_1), .B(
        output_counter17_0), .C(output_counter17_9), .Y(
        output_counter17_12));
    XAI1A \counter_RNO_1[1]  (.A(\counter[0]_net_1 ), .B(
        \counter_i_0[1] ), .C(output_signal_c), .Y(counter_n1_i_1));
    DFN1P0 \counter[3]  (.D(N_21), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[3] ));
    DFN1P0 \counter[2]  (.D(N_23), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[2] ));
    XAI1 \counter_RNO[8]  (.A(\counter_i_0[8] ), .B(N_43), .C(
        output_signal_c), .Y(N_11));
    XA1A \counter_RNO[13]  (.A(\counter[13]_net_1 ), .B(N_48), .C(
        output_signal_c), .Y(counter_n13));
    AND3 un2_output_counter_1_I_8 (.A(\output_counter[0]_net_1 ), .B(
        \output_counter[1]_net_1 ), .C(\output_counter[2]_net_1 ), .Y(
        N_14));
    NOR3C \counter_RNO_0[4]  (.A(\counter[0]_net_1 ), .B(
        \counter[5]_net_1 ), .C(\counter_RNI3P3V3[2]_net_1 ), .Y(N_115)
        );
    DFN1E1C0 \state[4]  (.D(N_28), .CLK(ref_signal_c), .CLR(reset_c), 
        .E(N_34), .Q(\state[4]_net_1 ));
    NOR3C \counter_RNI03741[6]  (.A(\counter_i_0[3] ), .B(
        \counter_i_0[6] ), .C(counter_n5_i_a2_0_2), .Y(
        counter_n5_i_a2_0_7));
    NOR2B un2_output_counter_1_I_11 (.A(\output_counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_13));
    NOR2B un2_output_counter_1_I_6 (.A(\output_counter[1]_net_1 ), .B(
        \output_counter[0]_net_1 ), .Y(N_15));
    XA1A \counter_RNO[12]  (.A(\counter[12]_net_1 ), .B(N_47), .C(
        output_signal_c), .Y(counter_n12));
    AO1 \counter_RNO[1]  (.A(counter_n1_i_a3_0_0), .B(
        \counter_RNI3P3V3[2]_net_1 ), .C(counter_n1_i_1), .Y(N_25));
    NOR2B \counter_RNO_0[1]  (.A(\counter[5]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(counter_n1_i_a3_0_0));
    NOR3A output_whitening_RNO_5 (.A(output_counter17_2), .B(
        \output_counter[2]_net_1 ), .C(\output_counter[5]_net_1 ), .Y(
        output_counter21_9));
    DFN1C0 \counter[4]  (.D(N_19), .CLK(ref_signal_c), .CLR(reset_c), 
        .Q(\counter[4]_net_1 ));
    DFN1E1C0 \state[5]  (.D(\state_22[5] ), .CLK(ref_signal_c), .CLR(
        reset_c), .E(N_34), .Q(\state[5]_net_1 ));
    DFN1C0 \counter[10]  (.D(counter_n10), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[10]_net_1 ));
    OR2 \counter_RNIPQ4R[2]  (.A(N_37), .B(\counter_i_0[2] ), .Y(N_38));
    GND GND_i (.Y(GND));
    DFN1C0 \counter[13]  (.D(counter_n13), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[13]_net_1 ));
    DFN0E1C0 \output_counter[9]  (.D(I_26_0), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[9]_net_1 ));
    AND3 un2_output_counter_1_I_33 (.A(\output_counter[9]_net_1 ), .B(
        \output_counter[10]_net_1 ), .C(\output_counter[11]_net_1 ), 
        .Y(\DWACT_FINC_E[7] ));
    NOR2 \output_counter_RNI08PF[12]  (.A(\output_counter[12]_net_1 ), 
        .B(\output_counter[9]_net_1 ), .Y(output_counter17_4));
    DFN1C0 \counter[12]  (.D(counter_n12), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[12]_net_1 ));
    AND3 un2_output_counter_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\output_counter[5]_net_1 ), .Y(N_11_0));
    OR2A \counter_RNI8VOF3[11]  (.A(\counter[11]_net_1 ), .B(N_46), .Y(
        N_47));
    AND3 un2_output_counter_1_I_42 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[9] ), .Y(N_2));
    NOR3C output_whitening_RNO_2 (.A(output_counter17_1), .B(
        output_counter17_0), .C(output_counter21_9), .Y(
        output_counter21_12));
    AND3 un2_output_counter_1_I_10 (.A(\output_counter[0]_net_1 ), .B(
        \output_counter[1]_net_1 ), .C(\output_counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    NOR3 \counter_RNIV05R[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[5]_net_1 ), .C(\counter[0]_net_1 ), .Y(
        state_1_sqmuxa_i_a3_1));
    XA1 output_whitening_RNO (.A(data_source_0_output_data), .B(
        output_whitening_4_i_x2_0), .C(output_signal_c), .Y(N_32));
    NOR2B \state_RNO[1]  (.A(output_signal_c), .B(\state[0]_net_1 ), 
        .Y(\state_22[1] ));
    DFN1C0 \counter[15]  (.D(counter_n15), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[15]_net_1 ));
    XOR2 un2_output_counter_1_I_14 (.A(N_12), .B(
        \output_counter[5]_net_1 ), .Y(I_14_1));
    AO1B \counter_RNI4KP75[4]  (.A(state_1_sqmuxa_i_a3_1), .B(
        \counter_RNI3P3V3[2]_net_1 ), .C(output_signal_c), .Y(N_34));
    NOR2A \output_counter_RNI777S[0]  (.A(\output_counter[0]_net_1 ), 
        .B(\output_counter[3]_net_1 ), .Y(output_counter17_7));
    VCC VCC_i (.Y(VCC));
    XA1A \counter_RNO[14]  (.A(\counter[14]_net_1 ), .B(N_49), .C(
        output_signal_c), .Y(counter_n14));
    DFN1P0 \counter[1]  (.D(N_25), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[1] ));
    XOR2 un2_output_counter_1_I_17 (.A(N_11_0), .B(
        \output_counter[6]_net_1 ), .Y(I_17_1));
    NOR3A \counter_RNO[5]  (.A(output_signal_c), .B(N_114), .C(N_66_i), 
        .Y(N_17));
    AND2 un2_output_counter_1_I_21 (.A(\output_counter[6]_net_1 ), .B(
        \output_counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    NOR2B \state_RNO[4]  (.A(\state[3]_net_1 ), .B(output_signal_c), 
        .Y(N_28));
    XAI1 \counter_RNO[3]  (.A(\counter_i_0[3] ), .B(N_38), .C(
        output_signal_c), .Y(N_21));
    XOR2 un2_output_counter_1_I_32 (.A(N_6), .B(
        \output_counter[11]_net_1 ), .Y(I_32_0));
    OR2A \counter_RNIJQ054[13]  (.A(\counter[13]_net_1 ), .B(N_48), .Y(
        N_49));
    XOR2 un2_output_counter_1_I_35 (.A(N_5), .B(
        \output_counter[12]_net_1 ), .Y(I_35));
    NOR2B \state_RNO[2]  (.A(output_signal_c), .B(\state[1]_net_1 ), 
        .Y(\state_22[2] ));
    NOR3A \counter_RNIV8VH1[9]  (.A(counter_n5_i_a2_0_6), .B(
        \counter[12]_net_1 ), .C(\counter[9]_net_1 ), .Y(
        counter_n5_i_a2_0_9));
    DFN1C0 \counter[5]  (.D(N_17), .CLK(ref_signal_c), .CLR(reset_c), 
        .Q(\counter[5]_net_1 ));
    DFN0E1C0 \output_counter[12]  (.D(I_35), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[12]_net_1 ));
    NOR3B \counter_RNI4DT81[2]  (.A(\counter_i_0[2] ), .B(
        counter_n5_i_a2_0_4), .C(\counter[14]_net_1 ), .Y(
        counter_n5_i_a2_0_8));
    XA1A \counter_RNO[10]  (.A(\counter[10]_net_1 ), .B(N_45), .C(
        output_signal_c), .Y(counter_n10));
    XOR2 un2_output_counter_1_I_26 (.A(N_8), .B(
        \output_counter[9]_net_1 ), .Y(I_26_0));
    NOR2B \state_RNO[6]  (.A(output_signal_c), .B(\state[5]_net_1 ), 
        .Y(\state_22[6] ));
    DFN0E1C0 \output_counter[1]  (.D(\output_counter_5[1] ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(output_signal_c), .Q(
        \output_counter[1]_net_1 ));
    XOR2 output_whitening_RNO_3 (.A(\state[6]_net_1 ), .B(
        \state[3]_net_1 ), .Y(output_whitening_4_i_x2_0));
    NOR3C \counter_RNO_0[5]  (.A(\counter[0]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter_RNI3P3V3[2]_net_1 ), .Y(N_114)
        );
    XOR2 un2_output_counter_1_I_20 (.A(N_10), .B(
        \output_counter[7]_net_1 ), .Y(I_20_1));
    NOR3B \output_counter_RNIGGEO1[1]  (.A(\output_counter[4]_net_1 ), 
        .B(output_counter17_7), .C(\output_counter[1]_net_1 ), .Y(
        output_counter17_11));
    OR2 \counter_RNIJNBV1[6]  (.A(N_41), .B(\counter_i_0[6] ), .Y(N_42)
        );
    AOI1B \output_counter_RNO[1]  (.A(output_counter17_13), .B(
        output_counter17_12), .C(I_5_1), .Y(\output_counter_5[1] ));
    NOR3C \counter_RNI3P3V3[2]  (.A(counter_n5_i_a2_0_8), .B(
        counter_n5_i_a2_0_7), .C(counter_n5_i_a2_0_9), .Y(
        \counter_RNI3P3V3[2]_net_1 ));
    XAI1 \counter_RNO[6]  (.A(\counter_i_0[6] ), .B(N_41), .C(
        output_signal_c), .Y(N_15_0));
    AND3 un2_output_counter_1_I_24 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(
        \DWACT_FINC_E[4] ));
    OR2A \counter_RNI18HQ2[9]  (.A(\counter[9]_net_1 ), .B(N_44), .Y(
        N_45));
    XOR2 un2_output_counter_1_I_5 (.A(\output_counter[0]_net_1 ), .B(
        \output_counter[1]_net_1 ), .Y(I_5_1));
    AND3 un2_output_counter_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \output_counter[3]_net_1 ), .C(\output_counter[4]_net_1 ), .Y(
        N_12));
    AND2 un2_output_counter_1_I_38 (.A(\output_counter[12]_net_1 ), .B(
        \output_counter[13]_net_1 ), .Y(\DWACT_FINC_E[8] ));
    AND3 un2_output_counter_1_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \output_counter[8]_net_1 ), .C(\output_counter[9]_net_1 ), .Y(
        N_7));
    DFN1E1C0 \state[3]  (.D(\state_22[3] ), .CLK(ref_signal_c), .CLR(
        reset_c), .E(N_34), .Q(\state[3]_net_1 ));
    AND3 un2_output_counter_1_I_39 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[8] ), .Y(N_3));
    NOR2 output_whitening_RNO_6 (.A(\output_counter[0]_net_1 ), .B(
        \output_counter[3]_net_1 ), .Y(output_counter21_7));
    NOR2B \counter_RNIJK3I[7]  (.A(\counter_i_0[8] ), .B(
        \counter_i_0[7] ), .Y(counter_n5_i_a2_0_2));
    DFN1C0 \counter[14]  (.D(counter_n14), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[14]_net_1 ));
    AX1D \counter_RNO_1[4]  (.A(\counter_i_0[3] ), .B(N_38), .C(
        \counter[4]_net_1 ), .Y(N_65_i));
    OR2A \counter_RNI563I[1]  (.A(\counter[0]_net_1 ), .B(
        \counter_i_0[1] ), .Y(N_37));
    DFN0E1C0 \output_counter[8]  (.D(I_23_0), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[8]_net_1 ));
    XOR2 \counter_RNO_1[5]  (.A(N_40), .B(\counter[5]_net_1 ), .Y(
        N_66_i));
    DFN0E1C0 \output_counter[0]  (.D(I_4_0), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[0]_net_1 ));
    NOR3A \counter_RNO[4]  (.A(output_signal_c), .B(N_115), .C(N_65_i), 
        .Y(N_19));
    XOR2 un2_output_counter_1_I_7 (.A(N_15), .B(
        \output_counter[2]_net_1 ), .Y(I_7_1));
    NOR2 \output_counter_RNIAPA3[11]  (.A(\output_counter[11]_net_1 ), 
        .B(\output_counter[13]_net_1 ), .Y(output_counter17_1));
    NOR3B \output_counter_RNI7F0C1[2]  (.A(\output_counter[5]_net_1 ), 
        .B(output_counter17_2), .C(\output_counter[2]_net_1 ), .Y(
        output_counter17_9));
    NOR2B \state_RNO[5]  (.A(output_signal_c), .B(\state[4]_net_1 ), 
        .Y(\state_22[5] ));
    XOR2 un2_output_counter_1_I_12 (.A(N_13), .B(
        \output_counter[4]_net_1 ), .Y(I_12_1));
    AND2 un2_output_counter_1_I_15 (.A(\output_counter[3]_net_1 ), .B(
        \output_counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    NOR3A output_whitening_RNO_4 (.A(output_counter21_7), .B(
        \output_counter[1]_net_1 ), .C(\output_counter[4]_net_1 ), .Y(
        output_counter21_11));
    DFN1E1C0 \state[2]  (.D(\state_22[2] ), .CLK(ref_signal_c), .CLR(
        reset_c), .E(N_34), .Q(\state[2]_net_1 ));
    AND3 un2_output_counter_1_I_41 (.A(\output_counter[12]_net_1 ), .B(
        \output_counter[13]_net_1 ), .C(\output_counter[14]_net_1 ), 
        .Y(\DWACT_FINC_E[9] ));
    DFN0E1C0 \output_counter[11]  (.D(I_32_0), .CLK(ref_signal_c), 
        .CLR(reset_c), .E(output_signal_c), .Q(
        \output_counter[11]_net_1 ));
    XOR2 un2_output_counter_1_I_23 (.A(N_9), .B(
        \output_counter[8]_net_1 ), .Y(I_23_0));
    DFN1E1C0 \state[1]  (.D(\state_22[1] ), .CLK(ref_signal_c), .CLR(
        reset_c), .E(N_34), .Q(\state[1]_net_1 ));
    DFN0E1C0 \output_counter[10]  (.D(I_28_0), .CLK(ref_signal_c), 
        .CLR(reset_c), .E(output_signal_c), .Q(
        \output_counter[10]_net_1 ));
    DFN1P0 \counter[7]  (.D(N_13_0), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[7] ));
    OR2A \counter_RNIRU9M1[5]  (.A(\counter[5]_net_1 ), .B(N_40), .Y(
        N_41));
    DFN0E1C0 \output_counter[7]  (.D(I_20_1), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[7]_net_1 ));
    DFN0E0C0 output_whitening (.D(N_32), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_whitening_1_sqmuxa), .Q(
        whitening_0_output_whitening));
    OR2A \counter_RNO_0[15]  (.A(\counter[14]_net_1 ), .B(N_49), .Y(
        N_51));
    NOR2A \counter_RNO[0]  (.A(output_signal_c), .B(\counter[0]_net_1 )
        , .Y(counter_n0));
    NOR2B \state_RNO[3]  (.A(output_signal_c), .B(\state[2]_net_1 ), 
        .Y(\state_22[3] ));
    NOR2B \state_RNO[0]  (.A(data_source_0_output_data), .B(
        output_signal_c), .Y(N_30));
    OR3A \counter_RNI478D1[3]  (.A(\counter[4]_net_1 ), .B(
        \counter_i_0[3] ), .C(N_38), .Y(N_40));
    NOR3A \counter_RNIVF9U[15]  (.A(\counter_i_0[1] ), .B(
        \counter[15]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        counter_n5_i_a2_0_6));
    OR2 \counter_RNI6CFH2[8]  (.A(N_43), .B(\counter_i_0[8] ), .Y(N_44)
        );
    DFN0E1C0 \output_counter[15]  (.D(I_43), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[15]_net_1 ));
    XOR2 un2_output_counter_1_I_40 (.A(N_3), .B(
        \output_counter[14]_net_1 ), .Y(I_40));
    AOI1B \output_counter_RNO[4]  (.A(output_counter17_13), .B(
        output_counter17_12), .C(I_12_1), .Y(\output_counter_5[4] ));
    AOI1B \output_counter_RNO[5]  (.A(output_counter17_13), .B(
        output_counter17_12), .C(I_14_1), .Y(\output_counter_5[5] ));
    AND3 un2_output_counter_1_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \output_counter[9]_net_1 ), .C(\output_counter[10]_net_1 ), .Y(
        N_6));
    NOR2 \output_counter_RNIFUA3[15]  (.A(\output_counter[15]_net_1 ), 
        .B(\output_counter[14]_net_1 ), .Y(output_counter17_0));
    AND3 un2_output_counter_1_I_18 (.A(\output_counter[3]_net_1 ), .B(
        \output_counter[4]_net_1 ), .C(\output_counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    AND3 un2_output_counter_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\output_counter[6]_net_1 ), .Y(N_10));
    AOI1B output_whitening_RNO_0 (.A(output_counter21_13), .B(
        output_counter21_12), .C(output_signal_c), .Y(
        output_whitening_1_sqmuxa));
    XAI1 \counter_RNO[2]  (.A(\counter_i_0[2] ), .B(N_37), .C(
        output_signal_c), .Y(N_23));
    DFN1C0 \counter[9]  (.D(counter_n9), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[9]_net_1 ));
    AND3 un2_output_counter_1_I_22 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(N_9));
    OR2A \counter_RNIDSCQ3[12]  (.A(\counter[12]_net_1 ), .B(N_47), .Y(
        N_48));
    NOR2B un2_output_counter_1_I_25 (.A(\output_counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_8));
    XA1A \counter_RNO[9]  (.A(\counter[9]_net_1 ), .B(N_44), .C(
        output_signal_c), .Y(counter_n9));
    AND3 un2_output_counter_1_I_36 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\output_counter[12]_net_1 ), .Y(N_4));
    DFN1P0 \counter[8]  (.D(N_11), .CLK(ref_signal_c), .PRE(reset_c), 
        .Q(\counter_i_0[8] ));
    XOR2 un2_output_counter_1_I_9 (.A(N_14), .B(
        \output_counter[3]_net_1 ), .Y(I_9_1));
    OR2A \counter_RNI43553[10]  (.A(\counter[10]_net_1 ), .B(N_45), .Y(
        N_46));
    AND3 un2_output_counter_1_I_30 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[6] ));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[0]_net_1 ));
    DFN0E1C0 \output_counter[2]  (.D(I_7_1), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[2]_net_1 ));
    NOR3C output_whitening_RNO_1 (.A(output_counter17_5), .B(
        output_counter17_4), .C(output_counter21_11), .Y(
        output_counter21_13));
    DFN0E1C0 \output_counter[6]  (.D(I_17_1), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_signal_c), .Q(\output_counter[6]_net_1 ));
    
endmodule


module main_clock(
       reset_c,
       GLA,
       ref_signal_c
    );
input  reset_c;
input  GLA;
output ref_signal_c;

    wire clock_out_i, N_7, \counter[1]_net_1 , \counter[0]_net_1 , N_5, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , counter14_4, 
        counter14_2, \counter[2]_net_1 , \counter[5]_net_1 , 
        counter14_3, \counter[6]_net_1 , \counter[7]_net_1 , 
        \counter[4]_net_1 , clock_out_RNO_net_1, \counter_3[0] , I_5, 
        I_7, I_9, I_12, I_14, I_17, I_20, N_2, \DWACT_FINC_E[2] , N_3, 
        \DWACT_FINC_E[1] , N_4, N_6, GND, VCC;
    
    NOR2B un5_counter_1_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_5));
    DFN1C0 \counter[2]  (.D(I_7), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[7]_net_1 ));
    AND3 un5_counter_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\counter[6]_net_1 ), .Y(N_2));
    XOR2 un5_counter_1_I_12 (.A(N_5), .B(\counter[4]_net_1 ), .Y(I_12));
    AOI1 \counter_RNO[0]  (.A(counter14_4), .B(counter14_3), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    DFN1C0 \counter[6]  (.D(I_17), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[6]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AND3 un5_counter_1_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    AND3 un5_counter_1_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    XOR2 un5_counter_1_I_9 (.A(N_6), .B(\counter[3]_net_1 ), .Y(I_9));
    AND3 un5_counter_1_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_6));
    NOR2B un5_counter_1_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_7));
    AND3 un5_counter_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_4));
    DFN1C0 \counter[4]  (.D(I_12), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[4]_net_1 ));
    XOR2 un5_counter_1_I_20 (.A(N_2), .B(\counter[7]_net_1 ), .Y(I_20));
    DFN1C0 \counter[5]  (.D(I_14), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[5]_net_1 ));
    XOR2 un5_counter_1_I_14 (.A(N_4), .B(\counter[5]_net_1 ), .Y(I_14));
    XOR2 un5_counter_1_I_7 (.A(N_7), .B(\counter[2]_net_1 ), .Y(I_7));
    XOR2 un5_counter_1_I_17 (.A(N_3), .B(\counter[6]_net_1 ), .Y(I_17));
    AND3 un5_counter_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\counter[5]_net_1 ), .Y(N_3));
    AX1C clock_out_RNO (.A(counter14_3), .B(counter14_4), .C(
        clock_out_i), .Y(clock_out_RNO_net_1));
    GND GND_i (.Y(GND));
    DFN1C0 \counter[1]  (.D(I_5), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[1]_net_1 ));
    CLKINT clock_out_RNIG44 (.A(clock_out_i), .Y(ref_signal_c));
    DFN1C0 \counter[3]  (.D(I_9), .CLK(GLA), .CLR(reset_c), .Q(
        \counter[3]_net_1 ));
    XOR2 un5_counter_1_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    NOR3 \counter_RNIFVEB1[7]  (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[3]_net_1 ), .Y(counter14_3));
    NOR2 \counter_RNIF4VS[1]  (.A(\counter[4]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(counter14_2));
    NOR3A \counter_RNI0BUP1[2]  (.A(counter14_2), .B(
        \counter[2]_net_1 ), .C(\counter[5]_net_1 ), .Y(counter14_4));
    AND2 un5_counter_1_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    DFN1C0 clock_out (.D(clock_out_RNO_net_1), .CLK(GLA), .CLR(reset_c)
        , .Q(clock_out_i));
    DFN1C0 \counter[0]  (.D(\counter_3[0] ), .CLK(GLA), .CLR(reset_c), 
        .Q(\counter[0]_net_1 ));
    
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
       modulator_0_data,
       reset_c,
       ref_signal_c,
       modulator_0_send,
       trigger_signal_c,
       output_signal_c
    );
output [15:0] modulator_0_data;
input  reset_c;
input  ref_signal_c;
output modulator_0_send;
input  trigger_signal_c;
output output_signal_c;

    wire output_signal_0, output_signal_1_sqmuxa_i_3, 
        output_signal_1_sqmuxa_i_a2_1_7, 
        output_signal_1_sqmuxa_i_a2_1_6, output_signal_1_sqmuxa_i_2, 
        N_37_2, output_signal_1_sqmuxa_i_0, N_89, 
        \clock_counter[15]_net_1 , \clock_counter[13]_net_1 , 
        output_signal_1_sqmuxa_i_a2_1, un6lto12, 
        \clock_counter[8]_net_1 , N_50, 
        output_signal_1_sqmuxa_i_a2_1_2, 
        output_signal_1_sqmuxa_i_a2_1_1, 
        output_signal_1_sqmuxa_i_a2_1_4, \clock_counter[9]_net_1 , 
        un6lto11, N_55, \clock_counter[10]_net_1 , 
        \clock_counter[5]_net_1 , \clock_counter[4]_net_1 , un6lto7, 
        \clock_counter[6]_net_1 , counter23_3, counter23_1, 
        \counter[1]_net_1 , \counter[5]_net_1 , counter23_2, 
        \counter[0]_net_1 , \counter[4]_net_1 , \counter[3]_net_1 , 
        \counter[2]_net_1 , output_signal_1_sqmuxa_i_a3_1, counter19_2, 
        counter19_1, counter19_0, N_12, N_48, N_14, N_47, N_16, N_46, 
        N_18, N_45, N_20, N_44, N_22, \clock_counter[3]_net_1 , N_43, 
        N_24, \clock_counter[2]_net_1 , N_42, N_26, 
        \clock_counter[0]_net_1 , \clock_counter[1]_net_1 , N_37, N_61, 
        data_0_sqmuxa_1, download_net_1, counting_net_1, counter19, 
        counter_n5, counter_47_0, counter_0_sqmuxa, counter_n4, 
        counter_n4_tz, counter_c2, counter_n3, counter_n3_tz, 
        counter_n2, counter_n2_tz, N_60, \clock_counter[14]_net_1 , 
        N_56, N_59, N_49, N_53, N_52, N_51, clock_counter_n9, 
        clock_counter_n10, clock_counter_n11, clock_counter_n12, 
        clock_counter_n13, clock_counter_n14, clock_counter_n15, 
        clock_counter_1_sqmuxa, N_57, N_83, N_86, N_30, upload_net_1, 
        N_32, counting_3, N_58, N_35, counter_n1, counter_n0, GND, VCC;
    
    DFN1E0P0 download (.D(N_30), .CLK(ref_signal_c), .PRE(reset_c), .E(
        trigger_signal_c), .Q(download_net_1));
    OR2 \clock_counter_RNIJ3G2[2]  (.A(\clock_counter[3]_net_1 ), .B(
        \clock_counter[2]_net_1 ), .Y(N_55));
    DFN1E0C0 \clock_counter[6]  (.D(N_16), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[6]_net_1 ));
    NOR2 \counter_RNIRKOV[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(counter19_1));
    XA1A \clock_counter_RNO[4]  (.A(\clock_counter[4]_net_1 ), .B(N_44)
        , .C(trigger_signal_c), .Y(N_20));
    NOR3C \counter_RNINTKF1[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_c2));
    DFN1E0C0 \clock_counter[3]  (.D(N_22), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[3]_net_1 ));
    DFN1E1C0 \data[3]  (.D(\clock_counter[3]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[3]));
    DFN1E0C0 \clock_counter[4]  (.D(N_20), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[4]_net_1 ));
    DFN1E1C0 \data[5]  (.D(\clock_counter[5]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[5]));
    DFN1E0C0 \clock_counter[8]  (.D(N_12), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[8]_net_1 ));
    NOR2 \counter_RNITMOV[2]  (.A(\counter[3]_net_1 ), .B(
        \counter[2]_net_1 ), .Y(counter23_1));
    DFN1C0 \counter[2]  (.D(counter_n2), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[2]_net_1 ));
    NOR2B \counter_RNISLOV[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(counter19_2));
    DFN1E0C0 \clock_counter[1]  (.D(N_26), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[1]_net_1 ));
    DFN1E0C0 \clock_counter[0]  (.D(N_83), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[0]_net_1 ));
    OR3 output_signal_RNO_7 (.A(N_37_2), .B(output_signal_1_sqmuxa_i_0)
        , .C(N_89), .Y(output_signal_1_sqmuxa_i_2));
    OR2A \clock_counter_RNI6GO8[6]  (.A(\clock_counter[6]_net_1 ), .B(
        N_46), .Y(N_47));
    OR2A \clock_counter_RNI2305[3]  (.A(\clock_counter[3]_net_1 ), .B(
        N_43), .Y(N_44));
    OA1B download_RNO (.A(download_net_1), .B(upload_net_1), .C(
        counting_net_1), .Y(N_30));
    DFN1E1C0 \data[9]  (.D(\clock_counter[9]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[9]));
    XOR2 \counter_RNO_0[3]  (.A(counter_c2), .B(\counter[3]_net_1 ), 
        .Y(counter_n3_tz));
    NOR2A \counter_RNO[0]  (.A(counter_0_sqmuxa), .B(
        \counter[0]_net_1 ), .Y(counter_n0));
    OR2A \clock_counter_RNI41VU[11]  (.A(un6lto11), .B(N_51), .Y(N_52));
    NOR2B \counter_RNO[4]  (.A(counter_0_sqmuxa), .B(counter_n4_tz), 
        .Y(counter_n4));
    DFN1E1C0 \data[2]  (.D(\clock_counter[2]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[2]));
    OR2A \clock_counter_RNID686[4]  (.A(\clock_counter[4]_net_1 ), .B(
        N_44), .Y(N_45));
    VCC VCC_i (.Y(VCC));
    NOR2A \clock_counter_RNO[0]  (.A(trigger_signal_c), .B(
        \clock_counter[0]_net_1 ), .Y(N_83));
    DFN1E1C0 \data[6]  (.D(\clock_counter[6]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[6]));
    CLKINT output_signal_RNI2QGD (.A(output_signal_0), .Y(
        output_signal_c));
    DFN1E1C0 \data[7]  (.D(un6lto7), .CLK(ref_signal_c), .CLR(reset_c), 
        .E(data_0_sqmuxa_1), .Q(modulator_0_data[7]));
    DFN1E1C0 \data[12]  (.D(un6lto12), .CLK(ref_signal_c), .CLR(
        reset_c), .E(data_0_sqmuxa_1), .Q(modulator_0_data[12]));
    DFN1E1C0 \data[10]  (.D(\clock_counter[10]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[10]));
    XA1 \counter_RNO[1]  (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(counter_0_sqmuxa), .Y(counter_n1));
    DFN1E0C0 \clock_counter[9]  (.D(clock_counter_n9), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[9]_net_1 ));
    DFN1E0C0 \clock_counter[15]  (.D(clock_counter_n15), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[15]_net_1 ));
    DFN1E1C0 counting (.D(counting_3), .CLK(ref_signal_c), .CLR(
        reset_c), .E(trigger_signal_c), .Q(counting_net_1));
    XA1A \clock_counter_RNO[12]  (.A(un6lto12), .B(N_52), .C(
        trigger_signal_c), .Y(clock_counter_n12));
    DFN1E1C0 \data[0]  (.D(\clock_counter[0]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[0]));
    DFN1E1C0 \data[11]  (.D(un6lto11), .CLK(ref_signal_c), .CLR(
        reset_c), .E(data_0_sqmuxa_1), .Q(modulator_0_data[11]));
    XA1A \clock_counter_RNO[13]  (.A(\clock_counter[13]_net_1 ), .B(
        N_53), .C(trigger_signal_c), .Y(clock_counter_n13));
    AO1 output_signal_RNO_2 (.A(output_signal_1_sqmuxa_i_a2_1_7), .B(
        output_signal_1_sqmuxa_i_a2_1_6), .C(
        output_signal_1_sqmuxa_i_2), .Y(output_signal_1_sqmuxa_i_3));
    XA1A \clock_counter_RNO[14]  (.A(\clock_counter[14]_net_1 ), .B(
        N_56), .C(trigger_signal_c), .Y(clock_counter_n14));
    DFN1E0C0 \clock_counter[5]  (.D(N_18), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[5]_net_1 ));
    NOR3 output_signal_RNO_10 (.A(\clock_counter[8]_net_1 ), .B(
        \clock_counter[10]_net_1 ), .C(un6lto12), .Y(
        output_signal_1_sqmuxa_i_a2_1_4));
    NOR3C download_RNI3N3B3 (.A(counter23_2), .B(counter23_3), .C(
        download_net_1), .Y(N_86));
    DFN1E1C0 \data[8]  (.D(\clock_counter[8]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[8]));
    OR3 output_signal_RNO_4 (.A(\clock_counter[0]_net_1 ), .B(
        \clock_counter[1]_net_1 ), .C(N_55), .Y(N_57));
    NOR2 \counter_RNISLOV_0[4]  (.A(\counter[0]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(counter23_2));
    XA1A \clock_counter_RNO[5]  (.A(\clock_counter[5]_net_1 ), .B(N_45)
        , .C(trigger_signal_c), .Y(N_18));
    OR2A \clock_counter_RNO_0[15]  (.A(\clock_counter[14]_net_1 ), .B(
        N_56), .Y(N_60));
    OR2 output_signal_RNO_12 (.A(\clock_counter[15]_net_1 ), .B(
        \clock_counter[13]_net_1 ), .Y(output_signal_1_sqmuxa_i_0));
    DFN1E1C0 \data[4]  (.D(\clock_counter[4]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[4]));
    DFN1C0 \counter[4]  (.D(counter_n4), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[4]_net_1 ));
    DFN1E1C0 \data[15]  (.D(\clock_counter[15]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[15]));
    DFN1C0 \counter[5]  (.D(counter_n5), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[5]_net_1 ));
    XA1A \clock_counter_RNO[10]  (.A(\clock_counter[10]_net_1 ), .B(
        N_59), .C(trigger_signal_c), .Y(clock_counter_n10));
    NOR2B \counter_RNO[2]  (.A(counter_0_sqmuxa), .B(counter_n2_tz), 
        .Y(counter_n2));
    OR2 \clock_counter_RNIB3OL[10]  (.A(N_50), .B(N_49), .Y(N_51));
    NOR3C output_signal_RNO_5 (.A(output_signal_1_sqmuxa_i_a2_1_2), .B(
        output_signal_1_sqmuxa_i_a2_1_1), .C(
        output_signal_1_sqmuxa_i_a2_1_4), .Y(
        output_signal_1_sqmuxa_i_a2_1_7));
    AOI1 output_signal_RNO (.A(output_signal_1_sqmuxa_i_a2_1), .B(N_61)
        , .C(output_signal_1_sqmuxa_i_3), .Y(N_37));
    GND GND_i (.Y(GND));
    XA1 \counter_RNO[5]  (.A(\counter[5]_net_1 ), .B(counter_47_0), .C(
        counter_0_sqmuxa), .Y(counter_n5));
    NOR2B \counter_RNO[3]  (.A(counter_0_sqmuxa), .B(counter_n3_tz), 
        .Y(counter_n3));
    OR2A \clock_counter_RNI3U8B[8]  (.A(\clock_counter[8]_net_1 ), .B(
        N_48), .Y(N_49));
    NOR2A \counter_RNI0QOV[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[3]_net_1 ), .Y(counter19_0));
    OR2A \clock_counter_RNO_0[10]  (.A(\clock_counter[9]_net_1 ), .B(
        N_49), .Y(N_59));
    OR2B \clock_counter_RNIFVF2[1]  (.A(\clock_counter[1]_net_1 ), .B(
        \clock_counter[0]_net_1 ), .Y(N_42));
    OR2A output_signal_RNO_11 (.A(trigger_signal_c), .B(
        \clock_counter[14]_net_1 ), .Y(N_37_2));
    OR2A \clock_counter_RNIKM0A[7]  (.A(un6lto7), .B(N_47), .Y(N_48));
    AOI1B \counter_RNISQHA3[4]  (.A(counter23_3), .B(counter23_2), .C(
        trigger_signal_c), .Y(clock_counter_1_sqmuxa));
    DFN1C0 \counter[1]  (.D(counter_n1), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[1]_net_1 ));
    XA1A \clock_counter_RNO[3]  (.A(\clock_counter[3]_net_1 ), .B(N_43)
        , .C(trigger_signal_c), .Y(N_22));
    DFN1E0C0 \clock_counter[2]  (.D(N_24), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[2]_net_1 ));
    AX1C \counter_RNO_0[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_n2_tz));
    NOR3C \counter_RNIN4AV2[2]  (.A(counter19_1), .B(counter19_0), .C(
        counter19_2), .Y(counter19));
    AO1 output_signal_RNO_1 (.A(output_signal_1_sqmuxa_i_a3_1), .B(
        N_57), .C(un6lto7), .Y(N_61));
    NOR3C \counter_RNO_0[5]  (.A(\counter[3]_net_1 ), .B(counter_c2), 
        .C(\counter[4]_net_1 ), .Y(counter_47_0));
    NOR2A \counter_RNISQHA3[2]  (.A(trigger_signal_c), .B(counter19), 
        .Y(counter_0_sqmuxa));
    DFN1C0 \counter[3]  (.D(counter_n3), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[3]_net_1 ));
    OR3C upload_RNIGGGB3 (.A(counter23_2), .B(counter23_3), .C(
        upload_net_1), .Y(N_58));
    AO1 counting_RNO (.A(N_58), .B(counting_net_1), .C(N_86), .Y(
        counting_3));
    DFN1E0C0 \clock_counter[7]  (.D(N_14), .CLK(ref_signal_c), .CLR(
        reset_c), .E(clock_counter_1_sqmuxa), .Q(un6lto7));
    DFN1E0C0 \clock_counter[14]  (.D(clock_counter_n14), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[14]_net_1 ));
    DFN1E1C0 \data[13]  (.D(\clock_counter[13]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[13]));
    OA1 upload_RNO (.A(download_net_1), .B(upload_net_1), .C(
        counting_net_1), .Y(N_32));
    NOR3A \counter_RNIREHV1[5]  (.A(counter23_1), .B(
        \counter[1]_net_1 ), .C(\counter[5]_net_1 ), .Y(counter23_3));
    XA1A \clock_counter_RNO[7]  (.A(un6lto7), .B(N_47), .C(
        trigger_signal_c), .Y(N_14));
    NOR2 output_signal_RNO_8 (.A(\clock_counter[5]_net_1 ), .B(
        \clock_counter[4]_net_1 ), .Y(output_signal_1_sqmuxa_i_a2_1_2));
    OR2A \clock_counter_RNIO0O3[2]  (.A(\clock_counter[2]_net_1 ), .B(
        N_42), .Y(N_43));
    DFN1E0C0 upload (.D(N_32), .CLK(ref_signal_c), .CLR(reset_c), .E(
        trigger_signal_c), .Q(upload_net_1));
    DFN1E0C0 \clock_counter[12]  (.D(clock_counter_n12), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        un6lto12));
    NOR3B output_signal_RNO_0 (.A(un6lto12), .B(
        \clock_counter[8]_net_1 ), .C(N_50), .Y(
        output_signal_1_sqmuxa_i_a2_1));
    NOR3B download_RNIC3431 (.A(download_net_1), .B(counting_net_1), 
        .C(trigger_signal_c), .Y(data_0_sqmuxa_1));
    XA1A \clock_counter_RNO[8]  (.A(\clock_counter[8]_net_1 ), .B(N_48)
        , .C(trigger_signal_c), .Y(N_12));
    NOR2 output_signal_RNO_9 (.A(un6lto7), .B(\clock_counter[6]_net_1 )
        , .Y(output_signal_1_sqmuxa_i_a2_1_1));
    DFN1E0C0 output_signal (.D(N_37), .CLK(ref_signal_c), .CLR(reset_c)
        , .E(clock_counter_1_sqmuxa), .Q(output_signal_0));
    DFN1E1C0 send (.D(N_35), .CLK(ref_signal_c), .CLR(reset_c), .E(
        trigger_signal_c), .Q(modulator_0_send));
    DFN1E1C0 \data[1]  (.D(\clock_counter[1]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[1]));
    OR2A \clock_counter_RNIUV581[12]  (.A(un6lto12), .B(N_52), .Y(N_53)
        );
    OR2A \clock_counter_RNIPAG7[5]  (.A(\clock_counter[5]_net_1 ), .B(
        N_45), .Y(N_46));
    DFN1E0C0 \clock_counter[13]  (.D(clock_counter_n13), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[13]_net_1 ));
    XA1A \clock_counter_RNO[9]  (.A(\clock_counter[9]_net_1 ), .B(N_49)
        , .C(trigger_signal_c), .Y(clock_counter_n9));
    XA1A \clock_counter_RNO[11]  (.A(un6lto11), .B(N_51), .C(
        trigger_signal_c), .Y(clock_counter_n11));
    DFN1E0C0 \clock_counter[11]  (.D(clock_counter_n11), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        un6lto11));
    NOR3C output_signal_RNO_3 (.A(\clock_counter[6]_net_1 ), .B(
        \clock_counter[4]_net_1 ), .C(\clock_counter[5]_net_1 ), .Y(
        output_signal_1_sqmuxa_i_a3_1));
    XA1 \clock_counter_RNO[1]  (.A(\clock_counter[0]_net_1 ), .B(
        \clock_counter[1]_net_1 ), .C(trigger_signal_c), .Y(N_26));
    OR2A \clock_counter_RNIPVCH1[13]  (.A(\clock_counter[13]_net_1 ), 
        .B(N_53), .Y(N_56));
    NOR3 output_signal_RNO_6 (.A(\clock_counter[9]_net_1 ), .B(
        un6lto11), .C(N_55), .Y(output_signal_1_sqmuxa_i_a2_1_6));
    AX1C \counter_RNO_0[4]  (.A(\counter[3]_net_1 ), .B(counter_c2), 
        .C(\counter[4]_net_1 ), .Y(counter_n4_tz));
    XA1A \clock_counter_RNO[15]  (.A(\clock_counter[15]_net_1 ), .B(
        N_60), .C(trigger_signal_c), .Y(clock_counter_n15));
    DFN1E0C0 \clock_counter[10]  (.D(clock_counter_n10), .CLK(
        ref_signal_c), .CLR(reset_c), .E(clock_counter_1_sqmuxa), .Q(
        \clock_counter[10]_net_1 ));
    DFN1E1C0 \data[14]  (.D(\clock_counter[14]_net_1 ), .CLK(
        ref_signal_c), .CLR(reset_c), .E(data_0_sqmuxa_1), .Q(
        modulator_0_data[14]));
    XA1A \clock_counter_RNO[2]  (.A(\clock_counter[2]_net_1 ), .B(N_42)
        , .C(trigger_signal_c), .Y(N_24));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[0]_net_1 ));
    XA1A \clock_counter_RNO[6]  (.A(\clock_counter[6]_net_1 ), .B(N_46)
        , .C(trigger_signal_c), .Y(N_16));
    OA1C send_RNO (.A(N_58), .B(modulator_0_send), .C(N_86), .Y(N_35));
    NOR2B output_signal_RNO_13 (.A(un6lto11), .B(un6lto12), .Y(N_89));
    OR2B \clock_counter_RNI85FA[10]  (.A(\clock_counter[10]_net_1 ), 
        .B(\clock_counter[9]_net_1 ), .Y(N_50));
    
endmodule


module data_source(
       modulator_0_data,
       data_source_0_output_data,
       reset_c,
       ref_signal_c,
       modulator_0_send,
       output_signal_c
    );
input  [15:0] modulator_0_data;
output data_source_0_output_data;
input  reset_c;
input  ref_signal_c;
input  modulator_0_send;
input  output_signal_c;

    wire \counter_RNIG8T53_0[1]_net_1 , \counter_RNIG8T53[1]_net_1 , 
        counter_32_0, \counter[14]_net_1 , counter_0_sqmuxa, 
        counter23_4, counter23_1, counter23_0, counter19_2, 
        \counter[5]_net_1 , \counter[4]_net_1 , \counter[1]_net_1 , 
        \counter[0]_net_1 , counter19_4_0, counter19_1, counter19_0, 
        counter19_4, \counter[2]_net_1 , \counter[3]_net_1 , 
        counter19_14_4, counter19_14_1, \counter[13]_net_1 , 
        \counter[15]_net_1 , counter19_14_3, \counter[11]_net_1 , 
        \counter[10]_net_1 , counter19_14_2, \counter[9]_net_1 , 
        \counter[8]_net_1 , \counter[12]_net_1 , counter19_14, N_488, 
        counter_c12, counter_n2, counter_n2_tz, counter_n3, counter_c2, 
        counter_n4, counter_c3, counter_n5, counter_c4, counter_n6, 
        counter_c5, \counter[6]_net_1 , counter_n7, counter_c6, 
        \counter[7]_net_1 , counter_n8, counter_c7, counter_n9, 
        counter_c8, counter_n10, counter_c9, counter_n11, counter_c10, 
        counter_n12, counter_c11, counter_n13, counter_n14, 
        counter_n14_tz, counter_n0, counter_n1, counter_n15, 
        output_data_5, \state[143]_net_1 , output_data_2_sqmuxa, N_173, 
        \state[5]_net_1 , \state[4]_net_1 , N_174, \state[6]_net_1 , 
        N_175, \state[7]_net_1 , N_176, \state[8]_net_1 , \state_7[5] , 
        \state_7[6] , \state_7[7] , \state_7[8] , N_184, 
        \state[16]_net_1 , \state[15]_net_1 , \state_7[16] , N_216, 
        \state[48]_net_1 , \state[47]_net_1 , N_224, \state[56]_net_1 , 
        \state[55]_net_1 , N_232, \state[64]_net_1 , \state[63]_net_1 , 
        \state_7[48] , \state_7[56] , \state_7[64] , \state_7[69] , 
        N_237, \state_7[68] , N_236, \state_7[67] , N_235, 
        \state_7[66] , N_234, \state_7[61] , N_229, \state_7[60] , 
        N_228, \state_7[59] , N_227, \state_7[58] , N_226, 
        \state_7[53] , N_221, \state_7[52] , N_220, \state_7[51] , 
        N_219, \state_7[50] , N_218, \state[69]_net_1 , 
        \state[68]_net_1 , \state[67]_net_1 , \state[66]_net_1 , 
        \state[65]_net_1 , \state[61]_net_1 , \state[60]_net_1 , 
        \state[59]_net_1 , \state[58]_net_1 , \state[57]_net_1 , 
        \state[53]_net_1 , \state[52]_net_1 , \state[51]_net_1 , 
        \state[50]_net_1 , \state[49]_net_1 , \state_7[21] , N_189, 
        \state_7[20] , N_188, \state_7[19] , N_187, \state_7[18] , 
        N_186, \state_7[13] , N_181, \state_7[12] , N_180, 
        \state[21]_net_1 , \state[20]_net_1 , \state[19]_net_1 , 
        \state[18]_net_1 , \state[17]_net_1 , \state[13]_net_1 , 
        \state[12]_net_1 , \state[11]_net_1 , \state_7[11] , N_179, 
        \state_7[10] , N_178, \state_7[4] , N_172, \state[10]_net_1 , 
        \state[9]_net_1 , \state[3]_net_1 , N_183, \state[14]_net_1 , 
        N_191, \state[23]_net_1 , \state[22]_net_1 , \state_7[15] , 
        \state_7[23] , N_223, \state[54]_net_1 , N_231, 
        \state[62]_net_1 , N_239, \state[71]_net_1 , \state[70]_net_1 , 
        \state_7[55] , \state_7[63] , \state_7[71] , \state_7[113] , 
        N_281, \state_7[121] , N_289, \state_7[129] , N_297, 
        \state_7[137] , N_305, \state_7[108] , N_276, \state_7[116] , 
        N_284, \state_7[124] , N_292, \state_7[132] , N_300, 
        \state_7[140] , N_308, \state_7[111] , N_279, \state_7[119] , 
        N_287, \state_7[127] , N_295, \state_7[135] , N_303, 
        \state_7[143] , N_311, \state_7[112] , N_280, \state_7[120] , 
        N_288, \state_7[128] , N_296, \state_7[136] , N_304, 
        \state_7[114] , N_282, \state_7[122] , N_290, \state_7[130] , 
        N_298, \state_7[138] , N_306, \state_7[115] , N_283, 
        \state_7[123] , N_291, \state_7[131] , N_299, \state_7[139] , 
        N_307, \state_7[109] , N_277, \state_7[117] , N_285, 
        \state_7[125] , N_293, \state_7[133] , N_301, \state_7[141] , 
        N_309, \state_7[110] , N_278, \state_7[118] , N_286, 
        \state_7[126] , N_294, \state_7[134] , N_302, \state_7[142] , 
        N_310, \state[142]_net_1 , \state[141]_net_1 , 
        \state[140]_net_1 , \state[139]_net_1 , \state[138]_net_1 , 
        \state[137]_net_1 , \state[136]_net_1 , \state[135]_net_1 , 
        \state[134]_net_1 , \state[133]_net_1 , \state[132]_net_1 , 
        \state[131]_net_1 , \state[130]_net_1 , \state[129]_net_1 , 
        \state[128]_net_1 , \state[127]_net_1 , \state[126]_net_1 , 
        \state[125]_net_1 , \state[124]_net_1 , \state[123]_net_1 , 
        \state[122]_net_1 , \state[121]_net_1 , \state[120]_net_1 , 
        \state[119]_net_1 , \state[118]_net_1 , \state[117]_net_1 , 
        \state[116]_net_1 , \state[115]_net_1 , \state[114]_net_1 , 
        \state[113]_net_1 , \state[112]_net_1 , \state[111]_net_1 , 
        \state[110]_net_1 , \state[109]_net_1 , \state[108]_net_1 , 
        \state[107]_net_1 , \state_7[97] , N_265, \state_7[100] , 
        N_268, \state_7[103] , N_271, \state_7[96] , N_264, 
        \state_7[98] , N_266, \state_7[99] , N_267, \state_7[101] , 
        N_269, \state_7[102] , N_270, \state_7[95] , N_263, 
        \state_7[94] , N_262, \state_7[93] , N_261, \state_7[92] , 
        N_260, \state_7[91] , N_259, \state_7[90] , N_258, 
        \state_7[89] , N_257, \state_7[88] , N_256, \state_7[87] , 
        N_255, \state_7[86] , N_254, \state_7[85] , N_253, 
        \state_7[84] , N_252, \state_7[83] , N_251, \state_7[82] , 
        N_250, \state_7[81] , N_249, \state_7[80] , N_248, 
        \state_7[79] , N_247, \state_7[78] , N_246, \state_7[77] , 
        N_245, \state_7[76] , N_244, \state_7[75] , N_243, 
        \state_7[74] , N_242, \state_7[73] , N_241, \state_7[72] , 
        N_240, \state[103]_net_1 , \state[102]_net_1 , 
        \state[101]_net_1 , \state[100]_net_1 , \state[99]_net_1 , 
        \state[98]_net_1 , \state[97]_net_1 , \state[96]_net_1 , 
        \state[95]_net_1 , \state[94]_net_1 , \state[93]_net_1 , 
        \state[92]_net_1 , \state[91]_net_1 , \state[90]_net_1 , 
        \state[89]_net_1 , \state[88]_net_1 , \state[87]_net_1 , 
        \state[86]_net_1 , \state[85]_net_1 , \state[84]_net_1 , 
        \state[83]_net_1 , \state[82]_net_1 , \state[81]_net_1 , 
        \state[80]_net_1 , \state[79]_net_1 , \state[78]_net_1 , 
        \state[77]_net_1 , \state[76]_net_1 , \state[75]_net_1 , 
        \state[74]_net_1 , \state[73]_net_1 , \state[72]_net_1 , 
        \state_7[105] , N_273, \state_7[106] , N_274, \state_7[107] , 
        N_275, \state[106]_net_1 , \state[105]_net_1 , 
        \state[104]_net_1 , \state_7[70] , N_238, \state_7[65] , N_233, 
        \state_7[62] , N_230, \state_7[57] , N_225, \state_7[54] , 
        N_222, \state_7[49] , N_217, \state_7[47] , N_215, 
        \state_7[46] , N_214, \state_7[45] , N_213, \state_7[44] , 
        N_212, \state_7[43] , N_211, \state_7[42] , N_210, 
        \state[46]_net_1 , \state[45]_net_1 , \state[44]_net_1 , 
        \state[43]_net_1 , \state[42]_net_1 , \state[41]_net_1 , 
        \state_7[41] , N_209, \state_7[40] , N_208, \state_7[39] , 
        N_207, \state_7[38] , N_206, \state_7[37] , N_205, 
        \state_7[36] , N_204, \state_7[35] , N_203, \state_7[34] , 
        N_202, \state_7[33] , N_201, \state_7[32] , N_200, 
        \state_7[31] , N_199, \state_7[30] , N_198, \state_7[29] , 
        N_197, \state_7[28] , N_196, \state_7[27] , N_195, 
        \state_7[26] , N_194, \state_7[25] , N_193, \state_7[24] , 
        N_192, \state_7[22] , N_190, \state_7[17] , N_185, 
        \state_7[14] , N_182, \state[40]_net_1 , \state[39]_net_1 , 
        \state[38]_net_1 , \state[37]_net_1 , \state[36]_net_1 , 
        \state[35]_net_1 , \state[34]_net_1 , \state[33]_net_1 , 
        \state[32]_net_1 , \state[31]_net_1 , \state[30]_net_1 , 
        \state[29]_net_1 , \state[28]_net_1 , \state[27]_net_1 , 
        \state[26]_net_1 , \state[25]_net_1 , \state[24]_net_1 , 
        \state_7[104] , N_272, \state_7[9] , N_177, \state_7[3] , 
        N_171, \state_7[2] , N_170, \state_7[1] , N_169, \state_7[0] , 
        N_168, \state[2]_net_1 , \state[1]_net_1 , \state[0]_net_1 , 
        GND, VCC;
    
    MX2 \state_RNO_0[31]  (.A(\state[31]_net_1 ), .B(\state[30]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_199));
    MX2 \state_RNO[27]  (.A(modulator_0_data[11]), .B(N_195), .S(
        output_signal_c), .Y(\state_7[27] ));
    DFN1C0 \state[40]  (.D(\state_7[40] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[40]_net_1 ));
    DFN1P0 \state[111]  (.D(\state_7[111] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[111]_net_1 ));
    MX2 \state_RNO_0[91]  (.A(\state[91]_net_1 ), .B(\state[90]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_259));
    MX2 \state_RNO_0[44]  (.A(\state[44]_net_1 ), .B(\state[43]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_212));
    MX2 \state_RNO_0[29]  (.A(\state[29]_net_1 ), .B(\state[28]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_197));
    DFN1C0 \state[0]  (.D(\state_7[0] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[0]_net_1 ));
    NOR2B \state_RNO[136]  (.A(output_signal_c), .B(N_304), .Y(
        \state_7[136] ));
    MX2 \state_RNO_0[143]  (.A(\state[143]_net_1 ), .B(
        \state[142]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_311));
    MX2 \state_RNO_0[57]  (.A(\state[57]_net_1 ), .B(\state[56]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_225));
    MX2 \state_RNO_0[10]  (.A(\state[10]_net_1 ), .B(\state[9]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_178));
    DFN1C0 \state[23]  (.D(\state_7[23] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[23]_net_1 ));
    MX2 \state_RNO_0[37]  (.A(\state[37]_net_1 ), .B(\state[36]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_205));
    MX2 \state_RNO_0[20]  (.A(\state[20]_net_1 ), .B(\state[19]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_188));
    MX2 \state_RNO_0[97]  (.A(\state[97]_net_1 ), .B(\state[96]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_265));
    AX1C \counter_RNO_0[2]  (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_n2_tz));
    DFN1C0 \state[114]  (.D(\state_7[114] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[114]_net_1 ));
    MX2 \state_RNO[22]  (.A(modulator_0_data[6]), .B(N_190), .S(
        output_signal_c), .Y(\state_7[22] ));
    MX2 \state_RNO_0[110]  (.A(\state[110]_net_1 ), .B(
        \state[109]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_278));
    MX2 \state_RNO[43]  (.A(modulator_0_data[11]), .B(N_211), .S(
        output_signal_c), .Y(\state_7[43] ));
    NOR2 \counter_RNIVPDJ[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(counter23_0));
    MX2 \state_RNO[10]  (.A(modulator_0_data[2]), .B(N_178), .S(
        output_signal_c), .Y(\state_7[10] ));
    DFN1C0 \state[29]  (.D(\state_7[29] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[29]_net_1 ));
    MX2 \state_RNO_0[2]  (.A(\state[2]_net_1 ), .B(\state[1]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_170));
    DFN1C0 \state[118]  (.D(\state_7[118] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[118]_net_1 ));
    MX2 \state_RNO_0[52]  (.A(\state[52]_net_1 ), .B(\state[51]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_220));
    NOR2B \state_RNO[134]  (.A(output_signal_c), .B(N_302), .Y(
        \state_7[134] ));
    DFN1C0 \state[55]  (.D(\state_7[55] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[55]_net_1 ));
    NOR2B \counter_RNI2OR61[3]  (.A(counter_c2), .B(\counter[3]_net_1 )
        , .Y(counter_c3));
    MX2 \state_RNO[95]  (.A(modulator_0_data[15]), .B(N_263), .S(
        output_signal_c), .Y(\state_7[95] ));
    MX2 \state_RNO_0[32]  (.A(\state[32]_net_1 ), .B(\state[31]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_200));
    MX2 \state_RNO[30]  (.A(modulator_0_data[14]), .B(N_198), .S(
        output_signal_c), .Y(\state_7[30] ));
    XA1 \counter_RNO[11]  (.A(counter_c10), .B(\counter[11]_net_1 ), 
        .C(counter_0_sqmuxa), .Y(counter_n11));
    MX2 \state_RNO_0[92]  (.A(\state[92]_net_1 ), .B(\state[91]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_260));
    DFN1C0 \state[10]  (.D(\state_7[10] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[10]_net_1 ));
    MX2 \state_RNO[17]  (.A(modulator_0_data[1]), .B(N_185), .S(
        output_signal_c), .Y(\state_7[17] ));
    DFN1P0 \state[81]  (.D(\state_7[81] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[81]_net_1 ));
    MX2 \state_RNO_0[136]  (.A(\state[136]_net_1 ), .B(
        \state[135]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_304));
    MX2 \state_RNO[69]  (.A(modulator_0_data[5]), .B(N_237), .S(
        output_signal_c), .Y(\state_7[69] ));
    DFN1P0 \state[57]  (.D(\state_7[57] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[57]_net_1 ));
    DFN1C0 \counter[11]  (.D(counter_n11), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[11]_net_1 ));
    MX2 \state_RNO_0[55]  (.A(\state[55]_net_1 ), .B(\state[54]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_223));
    MX2 \state_RNO_0[111]  (.A(\state[111]_net_1 ), .B(
        \state[110]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_279));
    DFN1C0 \state[88]  (.D(\state_7[88] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[88]_net_1 ));
    DFN1C0 \state[6]  (.D(\state_7[6] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[6]_net_1 ));
    MX2 \state_RNO_0[35]  (.A(\state[35]_net_1 ), .B(\state[34]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_203));
    MX2 \state_RNO[37]  (.A(modulator_0_data[13]), .B(N_205), .S(
        output_signal_c), .Y(\state_7[37] ));
    DFN1C0 \state[64]  (.D(\state_7[64] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[64]_net_1 ));
    NOR3C \counter_RNIGO4T[2]  (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(counter_c2));
    MX2 \state_RNO_0[95]  (.A(\state[95]_net_1 ), .B(\state[94]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_263));
    OR2A \state_RNO[113]  (.A(output_signal_c), .B(N_281), .Y(
        \state_7[113] ));
    AX1C \counter_RNO[15]  (.A(counter_0_sqmuxa), .B(
        \counter[15]_net_1 ), .C(N_488), .Y(counter_n15));
    MX2 \state_RNO_0[48]  (.A(\state[48]_net_1 ), .B(\state[47]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_216));
    DFN1P0 \state[132]  (.D(\state_7[132] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[132]_net_1 ));
    NOR2B \state_RNO[123]  (.A(output_signal_c), .B(N_291), .Y(
        \state_7[123] ));
    MX2 \state_RNO[12]  (.A(modulator_0_data[4]), .B(N_180), .S(
        output_signal_c), .Y(\state_7[12] ));
    MX2 \state_RNO_0[49]  (.A(\state[49]_net_1 ), .B(\state[48]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_217));
    MX2 \state_RNO_0[118]  (.A(\state[118]_net_1 ), .B(
        \state[117]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_286));
    DFN1C0 \state[96]  (.D(\state_7[96] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[96]_net_1 ));
    NOR3C \counter_RNIU51N[10]  (.A(counter19_14_3), .B(counter19_14_2)
        , .C(counter19_14_4), .Y(counter19_14));
    MX2 \state_RNO[76]  (.A(modulator_0_data[12]), .B(N_244), .S(
        output_signal_c), .Y(\state_7[76] ));
    OR2A \state_RNO[103]  (.A(output_signal_c), .B(N_271), .Y(
        \state_7[103] ));
    MX2 \state_RNO[56]  (.A(modulator_0_data[0]), .B(N_224), .S(
        output_signal_c), .Y(\state_7[56] ));
    DFN1C0 \state[133]  (.D(\state_7[133] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[133]_net_1 ));
    MX2 \state_RNO_0[40]  (.A(\state[40]_net_1 ), .B(\state[39]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_208));
    MX2 \state_RNO[49]  (.A(modulator_0_data[1]), .B(N_217), .S(
        output_signal_c), .Y(\state_7[49] ));
    MX2 \state_RNO[32]  (.A(modulator_0_data[8]), .B(N_200), .S(
        output_signal_c), .Y(\state_7[32] ));
    XA1 \counter_RNO[7]  (.A(counter_c6), .B(\counter[7]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n7));
    MX2 \state_RNO_0[132]  (.A(\state[132]_net_1 ), .B(
        \state[131]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_300));
    MX2 \state_RNO[80]  (.A(modulator_0_data[8]), .B(N_248), .S(
        output_signal_c), .Y(\state_7[80] ));
    DFN1C0 \counter[6]  (.D(counter_n6), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[6]_net_1 ));
    DFN1C0 \state[102]  (.D(\state_7[102] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[102]_net_1 ));
    DFN1P0 \state[31]  (.D(\state_7[31] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[31]_net_1 ));
    NOR2 \counter_RNIB6EJ[6]  (.A(\counter[7]_net_1 ), .B(
        \counter[6]_net_1 ), .Y(counter19_4));
    MX2 \state_RNO_0[54]  (.A(\state[54]_net_1 ), .B(\state[53]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_222));
    MX2 \state_RNO_0[66]  (.A(\state[66]_net_1 ), .B(\state[65]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_234));
    DFN1P0 \state[93]  (.D(\state_7[93] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[93]_net_1 ));
    DFN1C0 \state[50]  (.D(\state_7[50] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[50]_net_1 ));
    DFN1C0 \state[38]  (.D(\state_7[38] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[38]_net_1 ));
    MX2 \state_RNO_0[34]  (.A(\state[34]_net_1 ), .B(\state[33]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_202));
    DFN1P0 \state[44]  (.D(\state_7[44] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[44]_net_1 ));
    MX2 \state_RNO_0[142]  (.A(\state[142]_net_1 ), .B(
        \state[141]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_310));
    MX2 \state_RNO_0[94]  (.A(\state[94]_net_1 ), .B(\state[93]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_262));
    AOI1B output_data_RNO_0 (.A(counter23_4), .B(counter19_14), .C(
        output_signal_c), .Y(output_data_2_sqmuxa));
    DFN1C0 \counter[3]  (.D(counter_n3), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[3]_net_1 ));
    DFN1C0 \counter[2]  (.D(counter_n2), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[2]_net_1 ));
    NOR2B \state_RNO[98]  (.A(output_signal_c), .B(N_266), .Y(
        \state_7[98] ));
    DFN1P0 \state[103]  (.D(\state_7[103] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[103]_net_1 ));
    XA1 \counter_RNO[8]  (.A(counter_c7), .B(\counter[8]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n8));
    AOI1B \counter_RNIK0AI3[4]  (.A(counter19_4_0), .B(counter19_14), 
        .C(output_signal_c), .Y(counter_0_sqmuxa));
    MX2 \state_RNO[87]  (.A(modulator_0_data[15]), .B(N_255), .S(
        output_signal_c), .Y(\state_7[87] ));
    XA1 \counter_RNO[13]  (.A(counter_c12), .B(\counter[13]_net_1 ), 
        .C(counter_0_sqmuxa), .Y(counter_n13));
    MX2 \state_RNO_0[115]  (.A(\state[115]_net_1 ), .B(
        \state[114]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_283));
    DFN1C0 \state[99]  (.D(\state_7[99] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[99]_net_1 ));
    DFN1P0 \state[85]  (.D(\state_7[85] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[85]_net_1 ));
    DFN1C0 \state[4]  (.D(\state_7[4] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[4]_net_1 ));
    MX2 \state_RNO_0[71]  (.A(\state[71]_net_1 ), .B(\state[70]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_239));
    CLKINT \counter_RNIG8T53_0[1]  (.A(\counter_RNIG8T53[1]_net_1 ), 
        .Y(\counter_RNIG8T53_0[1]_net_1 ));
    NOR3C \counter_RNIK0OD2[1]  (.A(counter23_1), .B(counter23_0), .C(
        counter19_2), .Y(counter23_4));
    DFN1P0 \state[87]  (.D(\state_7[87] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[87]_net_1 ));
    MX2 \state_RNO[82]  (.A(modulator_0_data[10]), .B(N_250), .S(
        output_signal_c), .Y(\state_7[82] ));
    XA1 \counter_RNO[12]  (.A(counter_c11), .B(\counter[12]_net_1 ), 
        .C(counter_0_sqmuxa), .Y(counter_n12));
    NOR2B \state_RNO[115]  (.A(output_signal_c), .B(N_283), .Y(
        \state_7[115] ));
    DFN1C0 \state[122]  (.D(\state_7[122] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[122]_net_1 ));
    MX2 \state_RNO[64]  (.A(modulator_0_data[0]), .B(N_232), .S(
        output_signal_c), .Y(\state_7[64] ));
    DFN1C0 \state[7]  (.D(\state_7[7] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[7]_net_1 ));
    MX2 \state_RNO[26]  (.A(modulator_0_data[10]), .B(N_194), .S(
        output_signal_c), .Y(\state_7[26] ));
    MX2 \state_RNO_0[77]  (.A(\state[77]_net_1 ), .B(\state[76]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_245));
    NOR2B \state_RNO[125]  (.A(output_signal_c), .B(N_293), .Y(
        \state_7[125] ));
    XA1 \counter_RNO[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(counter_0_sqmuxa), .Y(counter_n1));
    DFN1C0 \state[14]  (.D(\state_7[14] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[14]_net_1 ));
    DFN1C0 \counter[4]  (.D(counter_n4), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[4]_net_1 ));
    DFN1C0 \state[5]  (.D(\state_7[5] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[5]_net_1 ));
    DFN1C0 \state[123]  (.D(\state_7[123] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[123]_net_1 ));
    DFN1C0 \counter[10]  (.D(counter_n10), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[10]_net_1 ));
    MX2 \state_RNO_0[63]  (.A(\state[63]_net_1 ), .B(\state[62]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_231));
    OR2A \state_RNO[105]  (.A(output_signal_c), .B(N_273), .Y(
        \state_7[105] ));
    MX2 \state_RNO_0[58]  (.A(\state[58]_net_1 ), .B(\state[57]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_226));
    DFN1C0 \state[136]  (.D(\state_7[136] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[136]_net_1 ));
    DFN1C0 \state[62]  (.D(\state_7[62] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[62]_net_1 ));
    NOR2A \counter_RNI4VDJ[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(counter19_1));
    NOR2B \state_RNO[142]  (.A(output_signal_c), .B(N_310), .Y(
        \state_7[142] ));
    GND GND_i (.Y(GND));
    DFN1C0 \counter[13]  (.D(counter_n13), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[13]_net_1 ));
    MX2 \state_RNO_0[59]  (.A(\state[59]_net_1 ), .B(\state[58]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_227));
    MX2 \state_RNO_0[38]  (.A(\state[38]_net_1 ), .B(\state[37]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_206));
    DFN1C0 \state[35]  (.D(\state_7[35] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[35]_net_1 ));
    DFN1P0 \state[140]  (.D(\state_7[140] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[140]_net_1 ));
    MX2 \state_RNO_0[72]  (.A(\state[72]_net_1 ), .B(\state[71]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_240));
    MX2 \state_RNO_0[98]  (.A(\state[98]_net_1 ), .B(\state[97]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_266));
    MX2 \state_RNO_0[39]  (.A(\state[39]_net_1 ), .B(\state[38]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_207));
    MX2 \state_RNO[44]  (.A(modulator_0_data[12]), .B(N_212), .S(
        output_signal_c), .Y(\state_7[44] ));
    MX2 \state_RNO_0[99]  (.A(\state[99]_net_1 ), .B(\state[98]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_267));
    MX2 \state_RNO_0[50]  (.A(\state[50]_net_1 ), .B(\state[49]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_218));
    DFN1C0 \counter[12]  (.D(counter_n12), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[12]_net_1 ));
    MX2 \state_RNO_0[5]  (.A(\state[5]_net_1 ), .B(\state[4]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_173));
    MX2 \state_RNO_0[4]  (.A(\state[4]_net_1 ), .B(\state[3]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_172));
    DFN1C0 \state[37]  (.D(\state_7[37] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[37]_net_1 ));
    MX2 \state_RNO[65]  (.A(modulator_0_data[1]), .B(N_233), .S(
        output_signal_c), .Y(\state_7[65] ));
    MX2 \state_RNO_0[130]  (.A(\state[130]_net_1 ), .B(
        \state[129]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_298));
    MX2 \state_RNO[71]  (.A(modulator_0_data[7]), .B(N_239), .S(
        output_signal_c), .Y(\state_7[71] ));
    MX2 \state_RNO_0[30]  (.A(\state[30]_net_1 ), .B(\state[29]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_198));
    DFN1C0 \state[80]  (.D(\state_7[80] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[80]_net_1 ));
    DFN1C0 \state[106]  (.D(\state_7[106] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[106]_net_1 ));
    MX2 \state_RNO_0[75]  (.A(\state[75]_net_1 ), .B(\state[74]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_243));
    MX2 \state_RNO[51]  (.A(modulator_0_data[3]), .B(N_219), .S(
        output_signal_c), .Y(\state_7[51] ));
    MX2 \state_RNO_0[90]  (.A(\state[90]_net_1 ), .B(\state[89]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_258));
    MX2 \state_RNO_0[7]  (.A(\state[7]_net_1 ), .B(\state[6]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_175));
    MX2 \state_RNO[16]  (.A(modulator_0_data[0]), .B(N_184), .S(
        output_signal_c), .Y(\state_7[16] ));
    NOR2B \state_RNO[118]  (.A(output_signal_c), .B(N_286), .Y(
        \state_7[118] ));
    DFN1C0 \state[71]  (.D(\state_7[71] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[71]_net_1 ));
    NOR2B \state_RNO[128]  (.A(output_signal_c), .B(N_296), .Y(
        \state_7[128] ));
    MX2 \state_RNO_0[140]  (.A(\state[140]_net_1 ), .B(
        \state[139]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_308));
    DFN1C0 \state[78]  (.D(\state_7[78] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[78]_net_1 ));
    OR2A \state_RNO[140]  (.A(output_signal_c), .B(N_308), .Y(
        \state_7[140] ));
    DFN1C0 \state[42]  (.D(\state_7[42] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[42]_net_1 ));
    MX2 \state_RNO[36]  (.A(modulator_0_data[12]), .B(N_204), .S(
        output_signal_c), .Y(\state_7[36] ));
    DFN1C0 \state[54]  (.D(\state_7[54] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[54]_net_1 ));
    MX2 \state_RNO_0[129]  (.A(\state[129]_net_1 ), .B(
        \state[128]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_297));
    OR2A \state_RNO[108]  (.A(output_signal_c), .B(N_276), .Y(
        \state_7[108] ));
    MX2 \state_RNO_0[86]  (.A(\state[86]_net_1 ), .B(\state[85]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_254));
    MX2 \state_RNO[90]  (.A(modulator_0_data[10]), .B(N_258), .S(
        output_signal_c), .Y(\state_7[90] ));
    MX2 \state_RNO_0[131]  (.A(\state[131]_net_1 ), .B(
        \state[130]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_299));
    NOR2B \counter_RNI3B613[9]  (.A(counter_c8), .B(\counter[9]_net_1 )
        , .Y(counter_c9));
    MX2 \state_RNO[73]  (.A(modulator_0_data[9]), .B(N_241), .S(
        output_signal_c), .Y(\state_7[73] ));
    MX2 \state_RNO[45]  (.A(modulator_0_data[13]), .B(N_213), .S(
        output_signal_c), .Y(\state_7[45] ));
    MX2 \state_RNO_0[109]  (.A(\state[109]_net_1 ), .B(
        \state[108]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_277));
    MX2 \state_RNO[1]  (.A(modulator_0_data[1]), .B(N_169), .S(
        output_signal_c), .Y(\state_7[1] ));
    MX2 \state_RNO[53]  (.A(modulator_0_data[5]), .B(N_221), .S(
        output_signal_c), .Y(\state_7[53] ));
    NOR2 \counter_RNI6A61[12]  (.A(\counter[12]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(counter19_14_1));
    DFN1C0 \counter[15]  (.D(counter_n15), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[15]_net_1 ));
    MX2 \state_RNO_0[141]  (.A(\state[141]_net_1 ), .B(
        \state[140]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_309));
    MX2 \state_RNO_0[74]  (.A(\state[74]_net_1 ), .B(\state[73]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_242));
    DFN1C0 \state[126]  (.D(\state_7[126] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[126]_net_1 ));
    DFN1C0 \state[30]  (.D(\state_7[30] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[30]_net_1 ));
    DFN1C0 \state[21]  (.D(\state_7[21] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[21]_net_1 ));
    MX2 \state_RNO_0[0]  (.A(\state[0]_net_1 ), .B(\state[143]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_168));
    OR2A \state_RNO[97]  (.A(output_signal_c), .B(N_265), .Y(
        \state_7[97] ));
    MX2 \state_RNO_0[138]  (.A(\state[138]_net_1 ), .B(
        \state[137]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_306));
    OA1A output_data_RNO (.A(modulator_0_send), .B(\state[143]_net_1 ), 
        .C(output_signal_c), .Y(output_data_5));
    DFN1P0 \state[28]  (.D(\state_7[28] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[28]_net_1 ));
    DFN1C0 \state[66]  (.D(\state_7[66] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[66]_net_1 ));
    DFN1C0 \state[141]  (.D(\state_7[141] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[141]_net_1 ));
    MX2 \state_RNO[21]  (.A(modulator_0_data[5]), .B(N_189), .S(
        output_signal_c), .Y(\state_7[21] ));
    DFN1C0 \state[12]  (.D(\state_7[12] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[12]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR2B \counter_RNO[14]  (.A(counter_0_sqmuxa), .B(counter_n14_tz), 
        .Y(counter_n14));
    MX2 \state_RNO[68]  (.A(modulator_0_data[4]), .B(N_236), .S(
        output_signal_c), .Y(\state_7[68] ));
    MX2 \state_RNO[86]  (.A(modulator_0_data[14]), .B(N_254), .S(
        output_signal_c), .Y(\state_7[86] ));
    DFN1C0 \counter[1]  (.D(counter_n1), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[1]_net_1 ));
    DFN1C0 \state[112]  (.D(\state_7[112] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[112]_net_1 ));
    MX2 \state_RNO[92]  (.A(modulator_0_data[12]), .B(N_260), .S(
        output_signal_c), .Y(\state_7[92] ));
    NOR2B \state_RNO[112]  (.A(output_signal_c), .B(N_280), .Y(
        \state_7[112] ));
    XA1 \counter_RNO[5]  (.A(counter_c4), .B(\counter[5]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n5));
    NOR2B \state_RNO[122]  (.A(output_signal_c), .B(N_290), .Y(
        \state_7[122] ));
    DFN1P0 \state[75]  (.D(\state_7[75] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[75]_net_1 ));
    DFN1C0 \state[63]  (.D(\state_7[63] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[63]_net_1 ));
    MX2 \state_RNO_0[83]  (.A(\state[83]_net_1 ), .B(\state[82]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_251));
    MX2 \state_RNO_0[127]  (.A(\state[127]_net_1 ), .B(
        \state[126]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_295));
    MX2 \state_RNO[4]  (.A(modulator_0_data[4]), .B(N_172), .S(
        output_signal_c), .Y(\state_7[4] ));
    XA1 \counter_RNO[3]  (.A(counter_c2), .B(\counter[3]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n3));
    MX2 \state_RNO_0[16]  (.A(\state[16]_net_1 ), .B(\state[15]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_184));
    DFN1P0 \state[113]  (.D(\state_7[113] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[113]_net_1 ));
    MX2 \state_RNO_0[124]  (.A(\state[124]_net_1 ), .B(
        \state[123]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_292));
    MX2 \state_RNO_0[123]  (.A(\state[123]_net_1 ), .B(
        \state[122]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_291));
    MX2 \state_RNO[23]  (.A(modulator_0_data[7]), .B(N_191), .S(
        output_signal_c), .Y(\state_7[23] ));
    NOR2B \state_RNO[102]  (.A(output_signal_c), .B(N_270), .Y(
        \state_7[102] ));
    DFN1P0 \state[77]  (.D(\state_7[77] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[77]_net_1 ));
    MX2 \state_RNO_0[26]  (.A(\state[26]_net_1 ), .B(\state[25]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_194));
    MX2 \state_RNO_0[135]  (.A(\state[135]_net_1 ), .B(
        \state[134]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_303));
    MX2 \state_RNO[79]  (.A(modulator_0_data[15]), .B(N_247), .S(
        output_signal_c), .Y(\state_7[79] ));
    MX2 \state_RNO_0[107]  (.A(\state[107]_net_1 ), .B(
        \state[106]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_275));
    MX2 \state_RNO[59]  (.A(modulator_0_data[3]), .B(N_227), .S(
        output_signal_c), .Y(\state_7[59] ));
    NOR2B \state_RNO[141]  (.A(output_signal_c), .B(N_309), .Y(
        \state_7[141] ));
    DFN1C0 \state[9]  (.D(\state_7[9] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[9]_net_1 ));
    DFN1C0 \state[46]  (.D(\state_7[46] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[46]_net_1 ));
    DFN1C0 \state[69]  (.D(\state_7[69] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[69]_net_1 ));
    MX2 \state_RNO[48]  (.A(modulator_0_data[0]), .B(N_216), .S(
        output_signal_c), .Y(\state_7[48] ));
    MX2 \state_RNO[2]  (.A(modulator_0_data[2]), .B(N_170), .S(
        output_signal_c), .Y(\state_7[2] ));
    DFN1C0 \state[84]  (.D(\state_7[84] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[84]_net_1 ));
    MX2 \state_RNO_0[104]  (.A(\state[104]_net_1 ), .B(
        \state[103]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_272));
    MX2 \state_RNO_0[103]  (.A(\state[103]_net_1 ), .B(
        \state[102]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_271));
    NOR2 \counter_RNI72EJ[4]  (.A(\counter[5]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(counter23_1));
    DFN1C0 \counter[5]  (.D(counter_n5), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[5]_net_1 ));
    MX2 \state_RNO_0[78]  (.A(\state[78]_net_1 ), .B(\state[77]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_246));
    MX2 \state_RNO[11]  (.A(modulator_0_data[3]), .B(N_179), .S(
        output_signal_c), .Y(\state_7[11] ));
    NOR2B \state_RNO[110]  (.A(output_signal_c), .B(N_278), .Y(
        \state_7[110] ));
    AX1C \counter_RNO_0[14]  (.A(\counter[13]_net_1 ), .B(counter_c12), 
        .C(\counter[14]_net_1 ), .Y(counter_n14_tz));
    MX2 \state_RNO_0[79]  (.A(\state[79]_net_1 ), .B(\state[78]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_247));
    NOR2B \state_RNO[120]  (.A(output_signal_c), .B(N_288), .Y(
        \state_7[120] ));
    DFN1C0 \state[52]  (.D(\state_7[52] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[52]_net_1 ));
    DFN1P0 \state[25]  (.D(\state_7[25] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[25]_net_1 ));
    MX2 \state_RNO[31]  (.A(modulator_0_data[15]), .B(N_199), .S(
        output_signal_c), .Y(\state_7[31] ));
    NOR2B \state_RNO[133]  (.A(output_signal_c), .B(N_301), .Y(
        \state_7[133] ));
    DFN1C0 \state[43]  (.D(\state_7[43] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[43]_net_1 ));
    XA1 \counter_RNO[10]  (.A(counter_c9), .B(\counter[10]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n10));
    MX2 \state_RNO_0[70]  (.A(\state[70]_net_1 ), .B(\state[69]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_238));
    MX2 \state_RNO[6]  (.A(modulator_0_data[6]), .B(N_174), .S(
        output_signal_c), .Y(\state_7[6] ));
    OR2A \state_RNO[100]  (.A(output_signal_c), .B(N_268), .Y(
        \state_7[100] ));
    MX2 \state_RNO_0[61]  (.A(\state[61]_net_1 ), .B(\state[60]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_229));
    DFN1C0 \state[27]  (.D(\state_7[27] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[27]_net_1 ));
    DFN1P0 \state[91]  (.D(\state_7[91] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[91]_net_1 ));
    DFN1P0 \state[49]  (.D(\state_7[49] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[49]_net_1 ));
    MX2 \state_RNO[13]  (.A(modulator_0_data[5]), .B(N_181), .S(
        output_signal_c), .Y(\state_7[13] ));
    DFN1C0 \state[16]  (.D(\state_7[16] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[16]_net_1 ));
    MX2 \state_RNO_0[13]  (.A(\state[13]_net_1 ), .B(\state[12]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_181));
    DFN1C0 \state[70]  (.D(\state_7[70] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[70]_net_1 ));
    DFN1P0 \state[135]  (.D(\state_7[135] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[135]_net_1 ));
    DFN1C0 \state[98]  (.D(\state_7[98] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[98]_net_1 ));
    MX2 \state_RNO_0[67]  (.A(\state[67]_net_1 ), .B(\state[66]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_235));
    MX2 \state_RNO_0[126]  (.A(\state[126]_net_1 ), .B(
        \state[125]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_294));
    DFN1C0 \state[34]  (.D(\state_7[34] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[34]_net_1 ));
    MX2 \state_RNO_0[23]  (.A(\state[23]_net_1 ), .B(\state[22]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_191));
    MX2 \state_RNO[29]  (.A(modulator_0_data[13]), .B(N_197), .S(
        output_signal_c), .Y(\state_7[29] ));
    MX2 \state_RNO[33]  (.A(modulator_0_data[9]), .B(N_201), .S(
        output_signal_c), .Y(\state_7[33] ));
    MX2 \state_RNO[7]  (.A(modulator_0_data[7]), .B(N_175), .S(
        output_signal_c), .Y(\state_7[7] ));
    NOR2B \counter_RNI3DP13[10]  (.A(counter_c9), .B(
        \counter[10]_net_1 ), .Y(counter_c10));
    MX2 \state_RNO_0[106]  (.A(\state[106]_net_1 ), .B(
        \state[105]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_274));
    DFN1P0 \state[116]  (.D(\state_7[116] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[116]_net_1 ));
    MX2 \state_RNO_0[46]  (.A(\state[46]_net_1 ), .B(\state[45]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_214));
    DFN1C0 \state[13]  (.D(\state_7[13] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[13]_net_1 ));
    MX2 \state_RNO_0[1]  (.A(\state[1]_net_1 ), .B(\state[0]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_169));
    NOR2 \counter_RNI1561[10]  (.A(\counter[11]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(counter19_14_3));
    MX2 \state_RNO[60]  (.A(modulator_0_data[4]), .B(N_228), .S(
        output_signal_c), .Y(\state_7[60] ));
    DFN1P0 \state[105]  (.D(\state_7[105] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[105]_net_1 ));
    MX2 \state_RNO[81]  (.A(modulator_0_data[9]), .B(N_249), .S(
        output_signal_c), .Y(\state_7[81] ));
    MX2 \state_RNO_0[62]  (.A(\state[62]_net_1 ), .B(\state[61]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_230));
    XA1 \counter_RNO[6]  (.A(counter_c5), .B(\counter[6]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n6));
    MX2 \state_RNO_0[9]  (.A(\state[9]_net_1 ), .B(\state[8]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_177));
    DFN1C0 \state[8]  (.D(\state_7[8] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[8]_net_1 ));
    NOR2B \counter_RNIB5FN2[8]  (.A(counter_c7), .B(\counter[8]_net_1 )
        , .Y(counter_c8));
    MX2 \state_RNO[74]  (.A(modulator_0_data[10]), .B(N_242), .S(
        output_signal_c), .Y(\state_7[74] ));
    DFN1C0 \state[20]  (.D(\state_7[20] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[20]_net_1 ));
    DFN1C0 \state[19]  (.D(\state_7[19] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[19]_net_1 ));
    MX2 \state_RNO[54]  (.A(modulator_0_data[6]), .B(N_222), .S(
        output_signal_c), .Y(\state_7[54] ));
    MX2 \state_RNO_0[122]  (.A(\state[122]_net_1 ), .B(
        \state[121]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_290));
    NOR2B \state_RNO[96]  (.A(output_signal_c), .B(N_264), .Y(
        \state_7[96] ));
    MX2 \state_RNO[67]  (.A(modulator_0_data[3]), .B(N_235), .S(
        output_signal_c), .Y(\state_7[67] ));
    NOR3A \counter_RNIE4S61[2]  (.A(counter19_4), .B(
        \counter[2]_net_1 ), .C(\counter[3]_net_1 ), .Y(counter19_2));
    MX2 \state_RNO_0[65]  (.A(\state[65]_net_1 ), .B(\state[64]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_233));
    OR2A \state_RNO[111]  (.A(output_signal_c), .B(N_279), .Y(
        \state_7[111] ));
    NOR2B \state_RNO[117]  (.A(output_signal_c), .B(N_285), .Y(
        \state_7[117] ));
    OR2A \state_RNO[135]  (.A(output_signal_c), .B(N_303), .Y(
        \state_7[135] ));
    OR2A \state_RNO[121]  (.A(output_signal_c), .B(N_289), .Y(
        \state_7[121] ));
    OR2A \state_RNO[127]  (.A(output_signal_c), .B(N_295), .Y(
        \state_7[127] ));
    OR2A \state_RNO[119]  (.A(output_signal_c), .B(N_287), .Y(
        \state_7[119] ));
    DFN1C0 \state[56]  (.D(\state_7[56] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[56]_net_1 ));
    MX2 \state_RNO_0[102]  (.A(\state[102]_net_1 ), .B(
        \state[101]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_270));
    DFN1C0 \state[82]  (.D(\state_7[82] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[82]_net_1 ));
    MX2 \state_RNO[19]  (.A(modulator_0_data[3]), .B(N_187), .S(
        output_signal_c), .Y(\state_7[19] ));
    OR2A \state_RNO[129]  (.A(output_signal_c), .B(N_297), .Y(
        \state_7[129] ));
    DFN1P0 \state[137]  (.D(\state_7[137] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[137]_net_1 ));
    MX2 \state_RNO[83]  (.A(modulator_0_data[11]), .B(N_251), .S(
        output_signal_c), .Y(\state_7[83] ));
    MX2 \state_RNO[40]  (.A(modulator_0_data[8]), .B(N_208), .S(
        output_signal_c), .Y(\state_7[40] ));
    DFN1C0 \state[3]  (.D(\state_7[3] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[3]_net_1 ));
    NOR2B \state_RNO[101]  (.A(output_signal_c), .B(N_269), .Y(
        \state_7[101] ));
    DFN1P0 \state[95]  (.D(\state_7[95] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[95]_net_1 ));
    DFN1C0 \counter[14]  (.D(counter_n14), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[14]_net_1 ));
    NOR2B \state_RNO[107]  (.A(output_signal_c), .B(N_275), .Y(
        \state_7[107] ));
    DFN1E0C0 output_data (.D(output_data_5), .CLK(ref_signal_c), .CLR(
        reset_c), .E(output_data_2_sqmuxa), .Q(
        data_source_0_output_data));
    MX2 \state_RNO[62]  (.A(modulator_0_data[6]), .B(N_230), .S(
        output_signal_c), .Y(\state_7[62] ));
    DFN1C0 \state[125]  (.D(\state_7[125] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[125]_net_1 ));
    MX2 \state_RNO[39]  (.A(modulator_0_data[15]), .B(N_207), .S(
        output_signal_c), .Y(\state_7[39] ));
    NOR2B \state_RNO[109]  (.A(output_signal_c), .B(N_277), .Y(
        \state_7[109] ));
    DFN1C0 \state[130]  (.D(\state_7[130] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[130]_net_1 ));
    MX2 \state_RNO_0[43]  (.A(\state[43]_net_1 ), .B(\state[42]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_211));
    DFN1C0 \state[53]  (.D(\state_7[53] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[53]_net_1 ));
    DFN1P0 \state[97]  (.D(\state_7[97] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[97]_net_1 ));
    MX2 \state_RNO[75]  (.A(modulator_0_data[11]), .B(N_243), .S(
        output_signal_c), .Y(\state_7[75] ));
    MX2 \state_RNO[47]  (.A(modulator_0_data[15]), .B(N_215), .S(
        output_signal_c), .Y(\state_7[47] ));
    MX2 \state_RNO[55]  (.A(modulator_0_data[7]), .B(N_223), .S(
        output_signal_c), .Y(\state_7[55] ));
    DFN1C0 \state[107]  (.D(\state_7[107] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[107]_net_1 ));
    MX2 \state_RNO_0[64]  (.A(\state[64]_net_1 ), .B(\state[63]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_232));
    DFN1C0 \state[139]  (.D(\state_7[139] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[139]_net_1 ));
    DFN1C0 \state[59]  (.D(\state_7[59] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[59]_net_1 ));
    MX2 \state_RNO_0[81]  (.A(\state[81]_net_1 ), .B(\state[80]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_249));
    MX2 \state_RNO[24]  (.A(modulator_0_data[8]), .B(N_192), .S(
        output_signal_c), .Y(\state_7[24] ));
    OR2A \state_RNO[116]  (.A(output_signal_c), .B(N_284), .Y(
        \state_7[116] ));
    DFN1P0 \state[100]  (.D(\state_7[100] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[100]_net_1 ));
    MX2 \state_RNO_0[119]  (.A(\state[119]_net_1 ), .B(
        \state[118]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_287));
    DFN1C0 \state[74]  (.D(\state_7[74] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[74]_net_1 ));
    NOR2B \state_RNO[138]  (.A(output_signal_c), .B(N_306), .Y(
        \state_7[138] ));
    NOR2B \state_RNO[126]  (.A(output_signal_c), .B(N_294), .Y(
        \state_7[126] ));
    DFN1C0 \state[32]  (.D(\state_7[32] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[32]_net_1 ));
    NOR2B \counter_RNIK0OD2[7]  (.A(counter_c6), .B(\counter[7]_net_1 )
        , .Y(counter_c7));
    MX2 \state_RNO[42]  (.A(modulator_0_data[10]), .B(N_210), .S(
        output_signal_c), .Y(\state_7[42] ));
    MX2 \state_RNO_0[56]  (.A(\state[56]_net_1 ), .B(\state[55]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_224));
    NOR3C \counter_RNIG8T53[1]  (.A(counter19_14), .B(counter23_4), .C(
        modulator_0_send), .Y(\counter_RNIG8T53[1]_net_1 ));
    MX2 \state_RNO_0[87]  (.A(\state[87]_net_1 ), .B(\state[86]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_255));
    NOR2B \state_RNO[106]  (.A(output_signal_c), .B(N_274), .Y(
        \state_7[106] ));
    MX2 \state_RNO_0[36]  (.A(\state[36]_net_1 ), .B(\state[35]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_204));
    DFN1C0 \state[109]  (.D(\state_7[109] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[109]_net_1 ));
    MX2 \state_RNO_0[96]  (.A(\state[96]_net_1 ), .B(\state[95]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_264));
    MX2 \state_RNO[89]  (.A(modulator_0_data[9]), .B(N_257), .S(
        output_signal_c), .Y(\state_7[89] ));
    XA1 \counter_RNO[4]  (.A(counter_c3), .B(\counter[4]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n4));
    NOR2B \state_RNO[114]  (.A(output_signal_c), .B(N_282), .Y(
        \state_7[114] ));
    DFN1P0 \state[127]  (.D(\state_7[127] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[127]_net_1 ));
    DFN1C0 \state[90]  (.D(\state_7[90] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[90]_net_1 ));
    OR2A \state_RNO[124]  (.A(output_signal_c), .B(N_292), .Y(
        \state_7[124] ));
    MX2 \state_RNO_0[120]  (.A(\state[120]_net_1 ), .B(
        \state[119]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_288));
    MX2 \state_RNO[5]  (.A(modulator_0_data[5]), .B(N_173), .S(
        output_signal_c), .Y(\state_7[5] ));
    DFN1C0 \state[86]  (.D(\state_7[86] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[86]_net_1 ));
    MX2 \state_RNO_0[82]  (.A(\state[82]_net_1 ), .B(\state[81]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_250));
    MX2 \state_RNO[25]  (.A(modulator_0_data[9]), .B(N_193), .S(
        output_signal_c), .Y(\state_7[25] ));
    DFN1C0 \state[24]  (.D(\state_7[24] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[24]_net_1 ));
    NOR2B \counter_RNI9Q9Q1[5]  (.A(counter_c4), .B(\counter[5]_net_1 )
        , .Y(counter_c5));
    DFN1C0 \state[120]  (.D(\state_7[120] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[120]_net_1 ));
    MX2 \state_RNO[91]  (.A(modulator_0_data[11]), .B(N_259), .S(
        output_signal_c), .Y(\state_7[91] ));
    MX2 \state_RNO[14]  (.A(modulator_0_data[6]), .B(N_182), .S(
        output_signal_c), .Y(\state_7[14] ));
    NOR2B \state_RNO[104]  (.A(output_signal_c), .B(N_272), .Y(
        \state_7[104] ));
    DFN1C0 \state[131]  (.D(\state_7[131] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[131]_net_1 ));
    MX2 \state_RNO_0[100]  (.A(\state[100]_net_1 ), .B(
        \state[99]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_268));
    MX2 \state_RNO[78]  (.A(modulator_0_data[14]), .B(N_246), .S(
        output_signal_c), .Y(\state_7[78] ));
    MX2 \state_RNO_0[68]  (.A(\state[68]_net_1 ), .B(\state[67]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_236));
    MX2 \state_RNO[58]  (.A(modulator_0_data[2]), .B(N_226), .S(
        output_signal_c), .Y(\state_7[58] ));
    MX2 \state_RNO_0[11]  (.A(\state[11]_net_1 ), .B(\state[10]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_179));
    DFN1C0 \state[61]  (.D(\state_7[61] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[61]_net_1 ));
    MX2 \state_RNO_0[85]  (.A(\state[85]_net_1 ), .B(\state[84]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_253));
    MX2 \state_RNO_0[69]  (.A(\state[69]_net_1 ), .B(\state[68]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_237));
    MX2 \state_RNO[34]  (.A(modulator_0_data[10]), .B(N_202), .S(
        output_signal_c), .Y(\state_7[34] ));
    DFN1P0 \state[83]  (.D(\state_7[83] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[83]_net_1 ));
    NOR2B \counter_RNI4GC23[11]  (.A(counter_c10), .B(
        \counter[11]_net_1 ), .Y(counter_c11));
    MX2 \state_RNO_0[117]  (.A(\state[117]_net_1 ), .B(
        \state[116]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_285));
    DFN1P0 \state[129]  (.D(\state_7[129] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[129]_net_1 ));
    MX2 \state_RNO_0[21]  (.A(\state[21]_net_1 ), .B(\state[20]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_189));
    DFN1C0 \state[68]  (.D(\state_7[68] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[68]_net_1 ));
    NOR2B \counter_RNIUS042[6]  (.A(counter_c5), .B(\counter[6]_net_1 )
        , .Y(counter_c6));
    NOR2B \counter_RNILOIG1[4]  (.A(counter_c3), .B(\counter[4]_net_1 )
        , .Y(counter_c4));
    NOR2B \counter_RNI2TDJ[4]  (.A(\counter[0]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(counter19_0));
    DFN1C0 \state[142]  (.D(\state_7[142] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[142]_net_1 ));
    MX2 \state_RNO_0[53]  (.A(\state[53]_net_1 ), .B(\state[52]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_221));
    MX2 \state_RNO_0[121]  (.A(\state[121]_net_1 ), .B(
        \state[120]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_289));
    DFN1C0 \state[134]  (.D(\state_7[134] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[134]_net_1 ));
    MX2 \state_RNO_0[114]  (.A(\state[114]_net_1 ), .B(
        \state[113]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_282));
    MX2 \state_RNO_0[113]  (.A(\state[113]_net_1 ), .B(
        \state[112]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_281));
    MX2 \state_RNO_0[60]  (.A(\state[60]_net_1 ), .B(\state[59]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_228));
    OR2A \state_RNO[132]  (.A(output_signal_c), .B(N_300), .Y(
        \state_7[132] ));
    DFN1C0 \state[2]  (.D(\state_7[2] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[2]_net_1 ));
    DFN1C0 \state[101]  (.D(\state_7[101] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[101]_net_1 ));
    MX2 \state_RNO_0[33]  (.A(\state[33]_net_1 ), .B(\state[32]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_201));
    MX2 \state_RNO_0[17]  (.A(\state[17]_net_1 ), .B(\state[16]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_185));
    MX2 \state_RNO_0[93]  (.A(\state[93]_net_1 ), .B(\state[92]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_261));
    DFN1C0 \state[138]  (.D(\state_7[138] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[138]_net_1 ));
    MX2 \state_RNO_0[101]  (.A(\state[101]_net_1 ), .B(
        \state[100]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_269));
    DFN1P0 \state[89]  (.D(\state_7[89] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[89]_net_1 ));
    MX2 \state_RNO_0[27]  (.A(\state[27]_net_1 ), .B(\state[26]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_195));
    MX2 \state_RNO[93]  (.A(modulator_0_data[13]), .B(N_261), .S(
        output_signal_c), .Y(\state_7[93] ));
    DFN1P0 \state[36]  (.D(\state_7[36] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[36]_net_1 ));
    DFN1P0 \state[143]  (.D(\state_7[143] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[143]_net_1 ));
    MX2 \state_RNO[66]  (.A(modulator_0_data[2]), .B(N_234), .S(
        output_signal_c), .Y(\state_7[66] ));
    DFN1C0 \state[1]  (.D(\state_7[1] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[1]_net_1 ));
    DFN1C0 \state[115]  (.D(\state_7[115] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[115]_net_1 ));
    DFN1C0 \counter[7]  (.D(counter_n7), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[7]_net_1 ));
    MX2 \state_RNO_0[128]  (.A(\state[128]_net_1 ), .B(
        \state[127]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_296));
    MX2 \state_RNO[15]  (.A(modulator_0_data[7]), .B(N_183), .S(
        output_signal_c), .Y(\state_7[15] ));
    DFN1C0 \state[104]  (.D(\state_7[104] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[104]_net_1 ));
    DFN1P0 \state[41]  (.D(\state_7[41] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[41]_net_1 ));
    MX2 \state_RNO_0[12]  (.A(\state[12]_net_1 ), .B(\state[11]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_180));
    DFN1C0 \state[72]  (.D(\state_7[72] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[72]_net_1 ));
    MX2 \state_RNO_0[84]  (.A(\state[84]_net_1 ), .B(\state[83]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_252));
    MX2 \state_RNO_0[108]  (.A(\state[108]_net_1 ), .B(
        \state[107]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_276));
    MX2 \state_RNO[35]  (.A(modulator_0_data[11]), .B(N_203), .S(
        output_signal_c), .Y(\state_7[35] ));
    DFN1P0 \state[108]  (.D(\state_7[108] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[108]_net_1 ));
    DFN1C0 \state[48]  (.D(\state_7[48] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[48]_net_1 ));
    MX2 \state_RNO_0[6]  (.A(\state[6]_net_1 ), .B(\state[5]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_174));
    MX2 \state_RNO_0[22]  (.A(\state[22]_net_1 ), .B(\state[21]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_190));
    NOR2B \state_RNO[130]  (.A(output_signal_c), .B(N_298), .Y(
        \state_7[130] ));
    DFN1P0 \state[33]  (.D(\state_7[33] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[33]_net_1 ));
    NOR3C \counter_RNO_0[15]  (.A(\counter[13]_net_1 ), .B(counter_c12)
        , .C(counter_32_0), .Y(N_488));
    NOR2A \counter_RNO[0]  (.A(counter_0_sqmuxa), .B(
        \counter[0]_net_1 ), .Y(counter_n0));
    MX2 \state_RNO[8]  (.A(modulator_0_data[0]), .B(N_176), .S(
        output_signal_c), .Y(\state_7[8] ));
    MX2 \state_RNO[84]  (.A(modulator_0_data[12]), .B(N_252), .S(
        output_signal_c), .Y(\state_7[84] ));
    MX2 \state_RNO[28]  (.A(modulator_0_data[12]), .B(N_196), .S(
        output_signal_c), .Y(\state_7[28] ));
    MX2 \state_RNO[3]  (.A(modulator_0_data[3]), .B(N_171), .S(
        output_signal_c), .Y(\state_7[3] ));
    MX2 \state_RNO[0]  (.A(modulator_0_data[0]), .B(N_168), .S(
        output_signal_c), .Y(\state_7[0] ));
    DFN1P0 \state[121]  (.D(\state_7[121] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[121]_net_1 ));
    MX2 \state_RNO_0[15]  (.A(\state[15]_net_1 ), .B(\state[14]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_183));
    NOR2B \counter_RNI6KV23[12]  (.A(counter_c11), .B(
        \counter[12]_net_1 ), .Y(counter_c12));
    MX2 \state_RNO[46]  (.A(modulator_0_data[14]), .B(N_214), .S(
        output_signal_c), .Y(\state_7[46] ));
    MX2 \state_RNO_0[25]  (.A(\state[25]_net_1 ), .B(\state[24]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_193));
    MX2 \state_RNO_0[116]  (.A(\state[116]_net_1 ), .B(
        \state[115]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_284));
    DFN1P0 \state[39]  (.D(\state_7[39] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[39]_net_1 ));
    DFN1P0 \state[65]  (.D(\state_7[65] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[65]_net_1 ));
    MX2 \state_RNO_0[125]  (.A(\state[125]_net_1 ), .B(
        \state[124]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_293));
    DFN1C0 \state[94]  (.D(\state_7[94] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[94]_net_1 ));
    MX2 \state_RNO_0[41]  (.A(\state[41]_net_1 ), .B(\state[40]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_209));
    DFN1P0 \state[124]  (.D(\state_7[124] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[124]_net_1 ));
    DFN1C0 \state[22]  (.D(\state_7[22] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[22]_net_1 ));
    NOR2B \state_RNO[99]  (.A(output_signal_c), .B(N_267), .Y(
        \state_7[99] ));
    DFN1C0 \state[67]  (.D(\state_7[67] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[67]_net_1 ));
    DFN1C0 \state[11]  (.D(\state_7[11] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[11]_net_1 ));
    MX2 \state_RNO_0[76]  (.A(\state[76]_net_1 ), .B(\state[75]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_244));
    MX2 \state_RNO_0[105]  (.A(\state[105]_net_1 ), .B(
        \state[104]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_273));
    DFN1C0 \state[117]  (.D(\state_7[117] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[117]_net_1 ));
    DFN1C0 \state[128]  (.D(\state_7[128] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[128]_net_1 ));
    DFN1C0 \state[18]  (.D(\state_7[18] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[18]_net_1 ));
    MX2 \state_RNO_0[47]  (.A(\state[47]_net_1 ), .B(\state[46]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_215));
    MX2 \state_RNO[85]  (.A(modulator_0_data[13]), .B(N_253), .S(
        output_signal_c), .Y(\state_7[85] ));
    MX2 \state_RNO[70]  (.A(modulator_0_data[6]), .B(N_238), .S(
        output_signal_c), .Y(\state_7[70] ));
    MX2 \state_RNO[50]  (.A(modulator_0_data[2]), .B(N_218), .S(
        output_signal_c), .Y(\state_7[50] ));
    NOR2 \counter_RNIFAEJ[8]  (.A(\counter[9]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(counter19_14_2));
    MX2 \state_RNO_0[139]  (.A(\state[139]_net_1 ), .B(
        \state[138]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_307));
    MX2 \state_RNO[18]  (.A(modulator_0_data[2]), .B(N_186), .S(
        output_signal_c), .Y(\state_7[18] ));
    DFN1C0 \state[110]  (.D(\state_7[110] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[110]_net_1 ));
    MX2 \state_RNO_0[14]  (.A(\state[14]_net_1 ), .B(\state[13]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_182));
    MX2 \state_RNO_0[88]  (.A(\state[88]_net_1 ), .B(\state[87]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_256));
    MX2 \state_RNO_0[112]  (.A(\state[112]_net_1 ), .B(
        \state[111]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_280));
    MX2 \state_RNO_0[24]  (.A(\state[24]_net_1 ), .B(\state[23]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_192));
    DFN1C0 \state[45]  (.D(\state_7[45] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[45]_net_1 ));
    NOR3C \counter_RNIK0OD2[4]  (.A(counter19_1), .B(counter19_0), .C(
        counter19_2), .Y(counter19_4_0));
    MX2 \state_RNO_0[89]  (.A(\state[89]_net_1 ), .B(\state[88]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_257));
    MX2 \state_RNO[77]  (.A(modulator_0_data[13]), .B(N_245), .S(
        output_signal_c), .Y(\state_7[77] ));
    MX2 \state_RNO[38]  (.A(modulator_0_data[14]), .B(N_206), .S(
        output_signal_c), .Y(\state_7[38] ));
    NOR2B \counter_RNO[2]  (.A(counter_0_sqmuxa), .B(counter_n2_tz), 
        .Y(counter_n2));
    DFN1C0 \counter[9]  (.D(counter_n9), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[9]_net_1 ));
    MX2 \state_RNO_0[42]  (.A(\state[42]_net_1 ), .B(\state[41]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_210));
    MX2 \state_RNO[57]  (.A(modulator_0_data[1]), .B(N_225), .S(
        output_signal_c), .Y(\state_7[57] ));
    MX2 \state_RNO[9]  (.A(modulator_0_data[1]), .B(N_177), .S(
        output_signal_c), .Y(\state_7[9] ));
    DFN1C0 \state[76]  (.D(\state_7[76] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[76]_net_1 ));
    DFN1P0 \state[119]  (.D(\state_7[119] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[119]_net_1 ));
    MX2 \state_RNO_0[80]  (.A(\state[80]_net_1 ), .B(\state[79]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_248));
    DFN1P0 \state[47]  (.D(\state_7[47] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[47]_net_1 ));
    MX2 \state_RNO_0[3]  (.A(\state[3]_net_1 ), .B(\state[2]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_171));
    MX2 \state_RNO[61]  (.A(modulator_0_data[5]), .B(N_229), .S(
        output_signal_c), .Y(\state_7[61] ));
    NOR2B \state_RNO[131]  (.A(output_signal_c), .B(N_299), .Y(
        \state_7[131] ));
    OR2A \state_RNO[137]  (.A(output_signal_c), .B(N_305), .Y(
        \state_7[137] ));
    XA1 \counter_RNO[9]  (.A(counter_c8), .B(\counter[9]_net_1 ), .C(
        counter_0_sqmuxa), .Y(counter_n9));
    NOR3A \counter_RNIEMC2[15]  (.A(counter19_14_1), .B(
        \counter[13]_net_1 ), .C(\counter[15]_net_1 ), .Y(
        counter19_14_4));
    DFN1C0 \state[60]  (.D(\state_7[60] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[60]_net_1 ));
    MX2 \state_RNO_0[45]  (.A(\state[45]_net_1 ), .B(\state[44]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_213));
    NOR2B \state_RNO[139]  (.A(output_signal_c), .B(N_307), .Y(
        \state_7[139] ));
    MX2 \state_RNO[72]  (.A(modulator_0_data[8]), .B(N_240), .S(
        output_signal_c), .Y(\state_7[72] ));
    DFN1C0 \state[51]  (.D(\state_7[51] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[51]_net_1 ));
    MX2 \state_RNO_0[73]  (.A(\state[73]_net_1 ), .B(\state[72]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_241));
    MX2 \state_RNO[52]  (.A(modulator_0_data[4]), .B(N_220), .S(
        output_signal_c), .Y(\state_7[52] ));
    NOR2B \counter_RNO_1[15]  (.A(\counter[14]_net_1 ), .B(
        counter_0_sqmuxa), .Y(counter_32_0));
    OR2A \state_RNO[143]  (.A(output_signal_c), .B(N_311), .Y(
        \state_7[143] ));
    DFN1P0 \state[73]  (.D(\state_7[73] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[73]_net_1 ));
    DFN1C0 \state[58]  (.D(\state_7[58] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[58]_net_1 ));
    DFN1C0 \counter[8]  (.D(counter_n8), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[8]_net_1 ));
    MX2 \state_RNO[20]  (.A(modulator_0_data[4]), .B(N_188), .S(
        output_signal_c), .Y(\state_7[20] ));
    DFN1C0 \state[15]  (.D(\state_7[15] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[15]_net_1 ));
    DFN1C0 \state[26]  (.D(\state_7[26] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[26]_net_1 ));
    MX2 \state_RNO_0[137]  (.A(\state[137]_net_1 ), .B(
        \state[136]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_305));
    MX2 \state_RNO[88]  (.A(modulator_0_data[8]), .B(N_256), .S(
        output_signal_c), .Y(\state_7[88] ));
    MX2 \state_RNO[63]  (.A(modulator_0_data[7]), .B(N_231), .S(
        output_signal_c), .Y(\state_7[63] ));
    DFN1P0 \state[79]  (.D(\state_7[79] ), .CLK(ref_signal_c), .PRE(
        reset_c), .Q(\state[79]_net_1 ));
    DFN1C0 \counter[0]  (.D(counter_n0), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\counter[0]_net_1 ));
    MX2 \state_RNO_0[18]  (.A(\state[18]_net_1 ), .B(\state[17]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_186));
    MX2 \state_RNO[41]  (.A(modulator_0_data[9]), .B(N_209), .S(
        output_signal_c), .Y(\state_7[41] ));
    MX2 \state_RNO_0[8]  (.A(\state[8]_net_1 ), .B(\state[7]_net_1 ), 
        .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_176));
    MX2 \state_RNO_0[51]  (.A(\state[51]_net_1 ), .B(\state[50]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_219));
    MX2 \state_RNO_0[134]  (.A(\state[134]_net_1 ), .B(
        \state[133]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_302));
    MX2 \state_RNO_0[133]  (.A(\state[133]_net_1 ), .B(
        \state[132]_net_1 ), .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(
        N_301));
    DFN1C0 \state[17]  (.D(\state_7[17] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[17]_net_1 ));
    MX2 \state_RNO_0[28]  (.A(\state[28]_net_1 ), .B(\state[27]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_196));
    MX2 \state_RNO_0[19]  (.A(\state[19]_net_1 ), .B(\state[18]_net_1 )
        , .S(\counter_RNIG8T53_0[1]_net_1 ), .Y(N_187));
    MX2 \state_RNO[94]  (.A(modulator_0_data[14]), .B(N_262), .S(
        output_signal_c), .Y(\state_7[94] ));
    DFN1C0 \state[92]  (.D(\state_7[92] ), .CLK(ref_signal_c), .CLR(
        reset_c), .Q(\state[92]_net_1 ));
    
endmodule


module top(
       clock,
       input_data,
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
input  reset;
input  trigger_signal;
output RSS_EN;
output clock_out;
output output_data_rate;
output output_signal;
output ref_signal;
output signal_into_switch;

    wire AND2_0_Y, AND2_1_Y, Y, INV_1_Y, AND2_2_Y, data_path_signal, 
        AND2_3_Y, INV_2_Y, data_source_0_output_data, modulator_0_send, 
        \modulator_0_data[0] , \modulator_0_data[1] , 
        \modulator_0_data[2] , \modulator_0_data[3] , 
        \modulator_0_data[4] , \modulator_0_data[5] , 
        \modulator_0_data[6] , \modulator_0_data[7] , 
        \modulator_0_data[8] , \modulator_0_data[9] , 
        \modulator_0_data[10] , \modulator_0_data[11] , 
        \modulator_0_data[12] , \modulator_0_data[13] , 
        \modulator_0_data[14] , \modulator_0_data[15] , 
        whitening_0_output_whitening, GLA, GND, clock_c, reset_c, 
        trigger_signal_c, VCC, clock_out_c, output_data_rate_c, 
        output_signal_c, ref_signal_c, signal_into_switch_c;
    
    dbpsk_modulator dbpsk_modulator_0 (.reset_c(reset_c), 
        .ref_signal_c(ref_signal_c), .output_data_rate_c(
        output_data_rate_c), .whitening_0_output_whitening(
        whitening_0_output_whitening), .output_signal_c(
        output_signal_c));
    AND2 AND2_0 (.A(ref_signal_c), .B(output_data_rate_c), .Y(AND2_0_Y)
        );
    INV INV_0 (.A(ref_signal_c), .Y(Y));
    AND2 AND2_3 (.A(ref_signal_c), .B(INV_2_Y), .Y(AND2_3_Y));
    OUTBUF ref_signal_pad (.D(ref_signal_c), .PAD(ref_signal));
    AND2 AND2_1 (.A(Y), .B(INV_1_Y), .Y(AND2_1_Y));
    two_mhz_clock two_mhz_clock_0 (.reset_c(reset_c), .GLA(GLA), 
        .clock_out_c(clock_out_c));
    VCC VCC_i (.Y(VCC));
    whitening whitening_0 (.whitening_0_output_whitening(
        whitening_0_output_whitening), .reset_c(reset_c), 
        .ref_signal_c(ref_signal_c), .data_source_0_output_data(
        data_source_0_output_data), .output_signal_c(output_signal_c));
    main_clock main_clock_0 (.reset_c(reset_c), .GLA(GLA), 
        .ref_signal_c(ref_signal_c));
    pll_core pll_core_0 (.clock_c(clock_c), .GLA(GLA));
    OR2 OR2_1 (.A(AND2_2_Y), .B(AND2_3_Y), .Y(signal_into_switch_c));
    modulator modulator_0 (.modulator_0_data({\modulator_0_data[15] , 
        \modulator_0_data[14] , \modulator_0_data[13] , 
        \modulator_0_data[12] , \modulator_0_data[11] , 
        \modulator_0_data[10] , \modulator_0_data[9] , 
        \modulator_0_data[8] , \modulator_0_data[7] , 
        \modulator_0_data[6] , \modulator_0_data[5] , 
        \modulator_0_data[4] , \modulator_0_data[3] , 
        \modulator_0_data[2] , \modulator_0_data[1] , 
        \modulator_0_data[0] }), .reset_c(reset_c), .ref_signal_c(
        ref_signal_c), .modulator_0_send(modulator_0_send), 
        .trigger_signal_c(trigger_signal_c), .output_signal_c(
        output_signal_c));
    GND GND_i (.Y(GND));
    INBUF trigger_signal_pad (.PAD(trigger_signal), .Y(
        trigger_signal_c));
    CLKBUF reset_pad (.PAD(reset), .Y(reset_c));
    OUTBUF output_data_rate_pad (.D(output_data_rate_c), .PAD(
        output_data_rate));
    INV INV_1 (.A(output_data_rate_c), .Y(INV_1_Y));
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
    data_source data_source_0 (.modulator_0_data({
        \modulator_0_data[15] , \modulator_0_data[14] , 
        \modulator_0_data[13] , \modulator_0_data[12] , 
        \modulator_0_data[11] , \modulator_0_data[10] , 
        \modulator_0_data[9] , \modulator_0_data[8] , 
        \modulator_0_data[7] , \modulator_0_data[6] , 
        \modulator_0_data[5] , \modulator_0_data[4] , 
        \modulator_0_data[3] , \modulator_0_data[2] , 
        \modulator_0_data[1] , \modulator_0_data[0] }), 
        .data_source_0_output_data(data_source_0_output_data), 
        .reset_c(reset_c), .ref_signal_c(ref_signal_c), 
        .modulator_0_send(modulator_0_send), .output_signal_c(
        output_signal_c));
    
endmodule
