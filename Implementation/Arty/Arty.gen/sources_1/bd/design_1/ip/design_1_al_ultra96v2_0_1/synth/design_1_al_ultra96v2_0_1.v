// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:al_ultra96v2:1.0
// IP Revision: 1713169998

(* X_CORE_INFO = "al_ultra96v2,Vivado 2023.2.2" *)
(* CHECK_LICENSE_TYPE = "design_1_al_ultra96v2_0_1,al_ultra96v2,{}" *)
(* CORE_GENERATION_INFO = "design_1_al_ultra96v2_0_1,al_ultra96v2,{x_ipProduct=Vivado 2023.2.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=al_ultra96v2,x_ipVersion=1.0,x_ipCoreRevision=1713169998,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_al_ultra96v2_0_1 (
  ser_tx,
  ser_rx,
  leds,
  ins_mem_wenb,
  ins_mem_waddr,
  ins_mem_wdata,
  ps_read_fin,
  ps_data,
  ps_read_rdy,
  ifm_write_fin,
  ifm_data,
  ifm_waddr,
  ifm_write_rdy,
  clk,
  enb
);

output wire ser_tx;
input wire ser_rx;
output wire [1 : 0] leds;
input wire ins_mem_wenb;
input wire [31 : 0] ins_mem_waddr;
input wire [31 : 0] ins_mem_wdata;
input wire ps_read_fin;
output wire [31 : 0] ps_data;
output wire ps_read_rdy;
input wire ifm_write_fin;
input wire [31 : 0] ifm_data;
output wire [21 : 0] ifm_waddr;
output wire ifm_write_rdy;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire enb;

  al_ultra96v2 inst (
    .ser_tx(ser_tx),
    .ser_rx(ser_rx),
    .leds(leds),
    .ins_mem_wenb(ins_mem_wenb),
    .ins_mem_waddr(ins_mem_waddr),
    .ins_mem_wdata(ins_mem_wdata),
    .ps_read_fin(ps_read_fin),
    .ps_data(ps_data),
    .ps_read_rdy(ps_read_rdy),
    .ifm_write_fin(ifm_write_fin),
    .ifm_data(ifm_data),
    .ifm_waddr(ifm_waddr),
    .ifm_write_rdy(ifm_write_rdy),
    .clk(clk),
    .enb(enb)
  );
endmodule
