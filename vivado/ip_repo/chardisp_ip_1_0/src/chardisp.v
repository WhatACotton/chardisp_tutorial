/* Copyright(C) 2020 Cobac.Net All Rights Reserved. */
/* chapter: ��7��            */
/* project: chardisp         */
/* outline: �����\����H�{�� */

module chardisp_ip(
    /* AXI4-Lite�M�� */
    input           CLK, RST,
    input   [15:0]  WRADDR,
    input   [3:0]   BYTEEN,
    input           WREN,
    input   [31:0]  WRDATA,
    input   [15:0]  RDADDR,
    input           RDEN,
    output  [31:0]  RDDATA,
    /* VGA�o�� */
    output          PCK,
    output  [3:0]   VGA_R, VGA_G, VGA_B,
    output          VGA_HS, VGA_VS,
    output  reg     VGA_DE
);

/* VGA(640�~480)�p�p�����[�^�ǂݍ��� */
`include "vga_param.vh"

wire    [9:0]   HCNT;
wire    [9:0]   VCNT;

/* syncgen�ڑ� */
syncgen syncgen (
    .CLK    (CLK),
    .RST    (RST),
    .PCK    (PCK),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .HCNT   (HCNT),
    .VCNT   (VCNT)
);

/* �����ł̎Q�Ɨp�ɃJ�E���g�l��ϊ� */
wire [9:0] iHCNT = HCNT - HFRONT - HWIDTH - HBACK + 10'd8;
wire [9:0] iVCNT = VCNT - VFRONT - VWIDTH - VBACK - 10'd40;

/* VRAM�ڑ��M�� */
wire [23:0] vramout;
wire [11:0] addra;
wire [11:0] vramaddr;

assign addra = (RDEN) ? RDADDR[13:2]: WRADDR[13:2];
assign RDDATA[31:24] = 8'h00;
wire [2:0] wea = {3{WREN}} & BYTEEN[2:0];

/* VRAM�ڑ� */
VRAM VRAM (
    .clka   (CLK),
    .wea    (wea),
    .addra  (addra),
    .dina   (WRDATA[23:0]),
    .douta  (RDDATA[23:0]),
    .clkb   (PCK),
    .web    (3'b0),
    .addrb  (vramaddr),
    .dinb   (24'h0),
    .doutb  (vramout)
);

wire [2:0] vdotcnt;
wire [7:0] cgout;

/* CGROM�ڑ� */
CGROM CGROM (
    .addra  ({vramout[6:0], vdotcnt}),
    .douta  (cgout),
    .clka   (PCK)
);

/* HCN��VCNT�𕶎��ƃh�b�g�̃J�E���^�Ƃ��ĕ����čl���� */
wire [6:0] hchacnt = iHCNT[9:3];  /* ���������J�E���^   */
wire [2:0] hdotcnt = iHCNT[2:0];  /* �����h�b�g�J�E���^ */
wire [5:0] vchacnt = iVCNT[8:3];  /* ���������J�E���^   */
assign     vdotcnt = iVCNT[2:0];  /* �����h�b�g�J�E���^ */

/* VRAM�̃A�h���X����  vramaddr �� vchacnt �� 80 �{ hchacnt */
assign vramaddr = (vchacnt<<6) + (vchacnt<<4) + hchacnt;

/* �V�t�g���W�X�^ */
reg [7:0] sreg;
wire sregld = (hdotcnt==3'h6 && iHCNT<10'd640);

always @( posedge PCK ) begin
    if ( RST )
        sreg <= 8'h00;
    else if ( sregld )
        sreg <= cgout;
    else
        sreg <= {sreg[6:0], 1'b0};
end

/* �F����sreg��LD�Ɠ����Ɏ�荞�� */
reg [11:0] color;

always @( posedge PCK ) begin
    if ( RST )
        color <= 12'h000;
    else if ( sregld )
        color <= vramout[19:8];
end

/* �����A�����\���C�l�[�u���M�� */
wire hdispen = (10'd7<=iHCNT && iHCNT<10'd647);
wire vdispen = (iVCNT<9'd400);

/* RGB�o�͐M���쐬 */
reg [11:0] vga_rgb;

always @( posedge PCK ) begin
    if ( RST )
        vga_rgb <= 12'h000;
    else
        vga_rgb <= color & {12{hdispen & vdispen & sreg[7]}};
end

assign {VGA_R, VGA_G, VGA_B} = vga_rgb;

/* VGA_DE�쐬 */
always @( posedge PCK ) begin
    if ( RST )
        VGA_DE <= 1'b0;
    else
        VGA_DE <= hdispen & (9'd45<=VCNT); /* �㉺�̍��\���������܂߂� */
end

endmodule
