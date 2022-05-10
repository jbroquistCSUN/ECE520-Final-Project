--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Thu May  5 21:55:13 2022
--Host        : jeffb-lenovo-laptop running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target oled_switches_design_wrapper.bd
--Design      : oled_switches_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity oled_switches_design_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    led_out_pin10_io : inout STD_LOGIC;
    led_out_pin1_io : inout STD_LOGIC;
    led_out_pin2_io : inout STD_LOGIC;
    led_out_pin3_io : inout STD_LOGIC;
    led_out_pin4_io : inout STD_LOGIC;
    led_out_pin7_io : inout STD_LOGIC;
    led_out_pin8_io : inout STD_LOGIC;
    led_out_pin9_io : inout STD_LOGIC;
    oled_out_pin10_io : inout STD_LOGIC;
    oled_out_pin1_io : inout STD_LOGIC;
    oled_out_pin2_io : inout STD_LOGIC;
    oled_out_pin3_io : inout STD_LOGIC;
    oled_out_pin4_io : inout STD_LOGIC;
    oled_out_pin7_io : inout STD_LOGIC;
    oled_out_pin8_io : inout STD_LOGIC;
    oled_out_pin9_io : inout STD_LOGIC;
    switches_out_pin10_io : inout STD_LOGIC;
    switches_out_pin1_io : inout STD_LOGIC;
    switches_out_pin2_io : inout STD_LOGIC;
    switches_out_pin3_io : inout STD_LOGIC;
    switches_out_pin4_io : inout STD_LOGIC;
    switches_out_pin7_io : inout STD_LOGIC;
    switches_out_pin8_io : inout STD_LOGIC;
    switches_out_pin9_io : inout STD_LOGIC
  );
end oled_switches_design_wrapper;

architecture STRUCTURE of oled_switches_design_wrapper is
  component oled_switches_design is
  port (
    oled_out_pin1_o : out STD_LOGIC;
    oled_out_pin7_i : in STD_LOGIC;
    oled_out_pin2_o : out STD_LOGIC;
    oled_out_pin8_i : in STD_LOGIC;
    oled_out_pin3_o : out STD_LOGIC;
    oled_out_pin9_i : in STD_LOGIC;
    oled_out_pin10_o : out STD_LOGIC;
    oled_out_pin4_o : out STD_LOGIC;
    oled_out_pin3_i : in STD_LOGIC;
    oled_out_pin4_i : in STD_LOGIC;
    oled_out_pin1_i : in STD_LOGIC;
    oled_out_pin2_i : in STD_LOGIC;
    oled_out_pin10_t : out STD_LOGIC;
    oled_out_pin8_t : out STD_LOGIC;
    oled_out_pin9_t : out STD_LOGIC;
    oled_out_pin4_t : out STD_LOGIC;
    oled_out_pin9_o : out STD_LOGIC;
    oled_out_pin10_i : in STD_LOGIC;
    oled_out_pin7_t : out STD_LOGIC;
    oled_out_pin1_t : out STD_LOGIC;
    oled_out_pin2_t : out STD_LOGIC;
    oled_out_pin7_o : out STD_LOGIC;
    oled_out_pin3_t : out STD_LOGIC;
    oled_out_pin8_o : out STD_LOGIC;
    led_out_pin1_o : out STD_LOGIC;
    led_out_pin7_i : in STD_LOGIC;
    led_out_pin2_o : out STD_LOGIC;
    led_out_pin8_i : in STD_LOGIC;
    led_out_pin3_o : out STD_LOGIC;
    led_out_pin9_i : in STD_LOGIC;
    led_out_pin10_o : out STD_LOGIC;
    led_out_pin4_o : out STD_LOGIC;
    led_out_pin3_i : in STD_LOGIC;
    led_out_pin4_i : in STD_LOGIC;
    led_out_pin1_i : in STD_LOGIC;
    led_out_pin2_i : in STD_LOGIC;
    led_out_pin10_t : out STD_LOGIC;
    led_out_pin8_t : out STD_LOGIC;
    led_out_pin9_t : out STD_LOGIC;
    led_out_pin4_t : out STD_LOGIC;
    led_out_pin9_o : out STD_LOGIC;
    led_out_pin10_i : in STD_LOGIC;
    led_out_pin7_t : out STD_LOGIC;
    led_out_pin1_t : out STD_LOGIC;
    led_out_pin2_t : out STD_LOGIC;
    led_out_pin7_o : out STD_LOGIC;
    led_out_pin3_t : out STD_LOGIC;
    led_out_pin8_o : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    switches_out_pin1_o : out STD_LOGIC;
    switches_out_pin7_i : in STD_LOGIC;
    switches_out_pin2_o : out STD_LOGIC;
    switches_out_pin8_i : in STD_LOGIC;
    switches_out_pin3_o : out STD_LOGIC;
    switches_out_pin9_i : in STD_LOGIC;
    switches_out_pin10_o : out STD_LOGIC;
    switches_out_pin4_o : out STD_LOGIC;
    switches_out_pin3_i : in STD_LOGIC;
    switches_out_pin4_i : in STD_LOGIC;
    switches_out_pin1_i : in STD_LOGIC;
    switches_out_pin2_i : in STD_LOGIC;
    switches_out_pin10_t : out STD_LOGIC;
    switches_out_pin8_t : out STD_LOGIC;
    switches_out_pin9_t : out STD_LOGIC;
    switches_out_pin4_t : out STD_LOGIC;
    switches_out_pin9_o : out STD_LOGIC;
    switches_out_pin10_i : in STD_LOGIC;
    switches_out_pin7_t : out STD_LOGIC;
    switches_out_pin1_t : out STD_LOGIC;
    switches_out_pin2_t : out STD_LOGIC;
    switches_out_pin7_o : out STD_LOGIC;
    switches_out_pin3_t : out STD_LOGIC;
    switches_out_pin8_o : out STD_LOGIC
  );
  end component oled_switches_design;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal led_out_pin10_i : STD_LOGIC;
  signal led_out_pin10_o : STD_LOGIC;
  signal led_out_pin10_t : STD_LOGIC;
  signal led_out_pin1_i : STD_LOGIC;
  signal led_out_pin1_o : STD_LOGIC;
  signal led_out_pin1_t : STD_LOGIC;
  signal led_out_pin2_i : STD_LOGIC;
  signal led_out_pin2_o : STD_LOGIC;
  signal led_out_pin2_t : STD_LOGIC;
  signal led_out_pin3_i : STD_LOGIC;
  signal led_out_pin3_o : STD_LOGIC;
  signal led_out_pin3_t : STD_LOGIC;
  signal led_out_pin4_i : STD_LOGIC;
  signal led_out_pin4_o : STD_LOGIC;
  signal led_out_pin4_t : STD_LOGIC;
  signal led_out_pin7_i : STD_LOGIC;
  signal led_out_pin7_o : STD_LOGIC;
  signal led_out_pin7_t : STD_LOGIC;
  signal led_out_pin8_i : STD_LOGIC;
  signal led_out_pin8_o : STD_LOGIC;
  signal led_out_pin8_t : STD_LOGIC;
  signal led_out_pin9_i : STD_LOGIC;
  signal led_out_pin9_o : STD_LOGIC;
  signal led_out_pin9_t : STD_LOGIC;
  signal oled_out_pin10_i : STD_LOGIC;
  signal oled_out_pin10_o : STD_LOGIC;
  signal oled_out_pin10_t : STD_LOGIC;
  signal oled_out_pin1_i : STD_LOGIC;
  signal oled_out_pin1_o : STD_LOGIC;
  signal oled_out_pin1_t : STD_LOGIC;
  signal oled_out_pin2_i : STD_LOGIC;
  signal oled_out_pin2_o : STD_LOGIC;
  signal oled_out_pin2_t : STD_LOGIC;
  signal oled_out_pin3_i : STD_LOGIC;
  signal oled_out_pin3_o : STD_LOGIC;
  signal oled_out_pin3_t : STD_LOGIC;
  signal oled_out_pin4_i : STD_LOGIC;
  signal oled_out_pin4_o : STD_LOGIC;
  signal oled_out_pin4_t : STD_LOGIC;
  signal oled_out_pin7_i : STD_LOGIC;
  signal oled_out_pin7_o : STD_LOGIC;
  signal oled_out_pin7_t : STD_LOGIC;
  signal oled_out_pin8_i : STD_LOGIC;
  signal oled_out_pin8_o : STD_LOGIC;
  signal oled_out_pin8_t : STD_LOGIC;
  signal oled_out_pin9_i : STD_LOGIC;
  signal oled_out_pin9_o : STD_LOGIC;
  signal oled_out_pin9_t : STD_LOGIC;
  signal switches_out_pin10_i : STD_LOGIC;
  signal switches_out_pin10_o : STD_LOGIC;
  signal switches_out_pin10_t : STD_LOGIC;
  signal switches_out_pin1_i : STD_LOGIC;
  signal switches_out_pin1_o : STD_LOGIC;
  signal switches_out_pin1_t : STD_LOGIC;
  signal switches_out_pin2_i : STD_LOGIC;
  signal switches_out_pin2_o : STD_LOGIC;
  signal switches_out_pin2_t : STD_LOGIC;
  signal switches_out_pin3_i : STD_LOGIC;
  signal switches_out_pin3_o : STD_LOGIC;
  signal switches_out_pin3_t : STD_LOGIC;
  signal switches_out_pin4_i : STD_LOGIC;
  signal switches_out_pin4_o : STD_LOGIC;
  signal switches_out_pin4_t : STD_LOGIC;
  signal switches_out_pin7_i : STD_LOGIC;
  signal switches_out_pin7_o : STD_LOGIC;
  signal switches_out_pin7_t : STD_LOGIC;
  signal switches_out_pin8_i : STD_LOGIC;
  signal switches_out_pin8_o : STD_LOGIC;
  signal switches_out_pin8_t : STD_LOGIC;
  signal switches_out_pin9_i : STD_LOGIC;
  signal switches_out_pin9_o : STD_LOGIC;
  signal switches_out_pin9_t : STD_LOGIC;
begin
led_out_pin10_iobuf: component IOBUF
     port map (
      I => led_out_pin10_o,
      IO => led_out_pin10_io,
      O => led_out_pin10_i,
      T => led_out_pin10_t
    );
led_out_pin1_iobuf: component IOBUF
     port map (
      I => led_out_pin1_o,
      IO => led_out_pin1_io,
      O => led_out_pin1_i,
      T => led_out_pin1_t
    );
led_out_pin2_iobuf: component IOBUF
     port map (
      I => led_out_pin2_o,
      IO => led_out_pin2_io,
      O => led_out_pin2_i,
      T => led_out_pin2_t
    );
led_out_pin3_iobuf: component IOBUF
     port map (
      I => led_out_pin3_o,
      IO => led_out_pin3_io,
      O => led_out_pin3_i,
      T => led_out_pin3_t
    );
led_out_pin4_iobuf: component IOBUF
     port map (
      I => led_out_pin4_o,
      IO => led_out_pin4_io,
      O => led_out_pin4_i,
      T => led_out_pin4_t
    );
led_out_pin7_iobuf: component IOBUF
     port map (
      I => led_out_pin7_o,
      IO => led_out_pin7_io,
      O => led_out_pin7_i,
      T => led_out_pin7_t
    );
led_out_pin8_iobuf: component IOBUF
     port map (
      I => led_out_pin8_o,
      IO => led_out_pin8_io,
      O => led_out_pin8_i,
      T => led_out_pin8_t
    );
led_out_pin9_iobuf: component IOBUF
     port map (
      I => led_out_pin9_o,
      IO => led_out_pin9_io,
      O => led_out_pin9_i,
      T => led_out_pin9_t
    );
oled_out_pin10_iobuf: component IOBUF
     port map (
      I => oled_out_pin10_o,
      IO => oled_out_pin10_io,
      O => oled_out_pin10_i,
      T => oled_out_pin10_t
    );
oled_out_pin1_iobuf: component IOBUF
     port map (
      I => oled_out_pin1_o,
      IO => oled_out_pin1_io,
      O => oled_out_pin1_i,
      T => oled_out_pin1_t
    );
oled_out_pin2_iobuf: component IOBUF
     port map (
      I => oled_out_pin2_o,
      IO => oled_out_pin2_io,
      O => oled_out_pin2_i,
      T => oled_out_pin2_t
    );
oled_out_pin3_iobuf: component IOBUF
     port map (
      I => oled_out_pin3_o,
      IO => oled_out_pin3_io,
      O => oled_out_pin3_i,
      T => oled_out_pin3_t
    );
oled_out_pin4_iobuf: component IOBUF
     port map (
      I => oled_out_pin4_o,
      IO => oled_out_pin4_io,
      O => oled_out_pin4_i,
      T => oled_out_pin4_t
    );
oled_out_pin7_iobuf: component IOBUF
     port map (
      I => oled_out_pin7_o,
      IO => oled_out_pin7_io,
      O => oled_out_pin7_i,
      T => oled_out_pin7_t
    );
oled_out_pin8_iobuf: component IOBUF
     port map (
      I => oled_out_pin8_o,
      IO => oled_out_pin8_io,
      O => oled_out_pin8_i,
      T => oled_out_pin8_t
    );
oled_out_pin9_iobuf: component IOBUF
     port map (
      I => oled_out_pin9_o,
      IO => oled_out_pin9_io,
      O => oled_out_pin9_i,
      T => oled_out_pin9_t
    );
oled_switches_design_i: component oled_switches_design
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      led_out_pin10_i => led_out_pin10_i,
      led_out_pin10_o => led_out_pin10_o,
      led_out_pin10_t => led_out_pin10_t,
      led_out_pin1_i => led_out_pin1_i,
      led_out_pin1_o => led_out_pin1_o,
      led_out_pin1_t => led_out_pin1_t,
      led_out_pin2_i => led_out_pin2_i,
      led_out_pin2_o => led_out_pin2_o,
      led_out_pin2_t => led_out_pin2_t,
      led_out_pin3_i => led_out_pin3_i,
      led_out_pin3_o => led_out_pin3_o,
      led_out_pin3_t => led_out_pin3_t,
      led_out_pin4_i => led_out_pin4_i,
      led_out_pin4_o => led_out_pin4_o,
      led_out_pin4_t => led_out_pin4_t,
      led_out_pin7_i => led_out_pin7_i,
      led_out_pin7_o => led_out_pin7_o,
      led_out_pin7_t => led_out_pin7_t,
      led_out_pin8_i => led_out_pin8_i,
      led_out_pin8_o => led_out_pin8_o,
      led_out_pin8_t => led_out_pin8_t,
      led_out_pin9_i => led_out_pin9_i,
      led_out_pin9_o => led_out_pin9_o,
      led_out_pin9_t => led_out_pin9_t,
      oled_out_pin10_i => oled_out_pin10_i,
      oled_out_pin10_o => oled_out_pin10_o,
      oled_out_pin10_t => oled_out_pin10_t,
      oled_out_pin1_i => oled_out_pin1_i,
      oled_out_pin1_o => oled_out_pin1_o,
      oled_out_pin1_t => oled_out_pin1_t,
      oled_out_pin2_i => oled_out_pin2_i,
      oled_out_pin2_o => oled_out_pin2_o,
      oled_out_pin2_t => oled_out_pin2_t,
      oled_out_pin3_i => oled_out_pin3_i,
      oled_out_pin3_o => oled_out_pin3_o,
      oled_out_pin3_t => oled_out_pin3_t,
      oled_out_pin4_i => oled_out_pin4_i,
      oled_out_pin4_o => oled_out_pin4_o,
      oled_out_pin4_t => oled_out_pin4_t,
      oled_out_pin7_i => oled_out_pin7_i,
      oled_out_pin7_o => oled_out_pin7_o,
      oled_out_pin7_t => oled_out_pin7_t,
      oled_out_pin8_i => oled_out_pin8_i,
      oled_out_pin8_o => oled_out_pin8_o,
      oled_out_pin8_t => oled_out_pin8_t,
      oled_out_pin9_i => oled_out_pin9_i,
      oled_out_pin9_o => oled_out_pin9_o,
      oled_out_pin9_t => oled_out_pin9_t,
      switches_out_pin10_i => switches_out_pin10_i,
      switches_out_pin10_o => switches_out_pin10_o,
      switches_out_pin10_t => switches_out_pin10_t,
      switches_out_pin1_i => switches_out_pin1_i,
      switches_out_pin1_o => switches_out_pin1_o,
      switches_out_pin1_t => switches_out_pin1_t,
      switches_out_pin2_i => switches_out_pin2_i,
      switches_out_pin2_o => switches_out_pin2_o,
      switches_out_pin2_t => switches_out_pin2_t,
      switches_out_pin3_i => switches_out_pin3_i,
      switches_out_pin3_o => switches_out_pin3_o,
      switches_out_pin3_t => switches_out_pin3_t,
      switches_out_pin4_i => switches_out_pin4_i,
      switches_out_pin4_o => switches_out_pin4_o,
      switches_out_pin4_t => switches_out_pin4_t,
      switches_out_pin7_i => switches_out_pin7_i,
      switches_out_pin7_o => switches_out_pin7_o,
      switches_out_pin7_t => switches_out_pin7_t,
      switches_out_pin8_i => switches_out_pin8_i,
      switches_out_pin8_o => switches_out_pin8_o,
      switches_out_pin8_t => switches_out_pin8_t,
      switches_out_pin9_i => switches_out_pin9_i,
      switches_out_pin9_o => switches_out_pin9_o,
      switches_out_pin9_t => switches_out_pin9_t
    );
switches_out_pin10_iobuf: component IOBUF
     port map (
      I => switches_out_pin10_o,
      IO => switches_out_pin10_io,
      O => switches_out_pin10_i,
      T => switches_out_pin10_t
    );
switches_out_pin1_iobuf: component IOBUF
     port map (
      I => switches_out_pin1_o,
      IO => switches_out_pin1_io,
      O => switches_out_pin1_i,
      T => switches_out_pin1_t
    );
switches_out_pin2_iobuf: component IOBUF
     port map (
      I => switches_out_pin2_o,
      IO => switches_out_pin2_io,
      O => switches_out_pin2_i,
      T => switches_out_pin2_t
    );
switches_out_pin3_iobuf: component IOBUF
     port map (
      I => switches_out_pin3_o,
      IO => switches_out_pin3_io,
      O => switches_out_pin3_i,
      T => switches_out_pin3_t
    );
switches_out_pin4_iobuf: component IOBUF
     port map (
      I => switches_out_pin4_o,
      IO => switches_out_pin4_io,
      O => switches_out_pin4_i,
      T => switches_out_pin4_t
    );
switches_out_pin7_iobuf: component IOBUF
     port map (
      I => switches_out_pin7_o,
      IO => switches_out_pin7_io,
      O => switches_out_pin7_i,
      T => switches_out_pin7_t
    );
switches_out_pin8_iobuf: component IOBUF
     port map (
      I => switches_out_pin8_o,
      IO => switches_out_pin8_io,
      O => switches_out_pin8_i,
      T => switches_out_pin8_t
    );
switches_out_pin9_iobuf: component IOBUF
     port map (
      I => switches_out_pin9_o,
      IO => switches_out_pin9_io,
      O => switches_out_pin9_i,
      T => switches_out_pin9_t
    );
end STRUCTURE;
