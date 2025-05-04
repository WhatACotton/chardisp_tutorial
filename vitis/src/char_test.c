/* Copyright(C) 2020 Cobac.Net All Rights Reserved. */
/* chapter: ��7��                        */
/* project: chardisp                     */
/* outline: �����\����H�e�X�g�v���O���� */

#include "xparameters.h"
#include "xil_printf.h"

#define VRAM ((volatile unsigned int *)XPAR_CHARDISP_IP_0_S00_AXI_BASEADDR)
#define VRAM_C ((volatile unsigned char *)XPAR_CHARDISP_IP_0_S00_AXI_BASEADDR)

int main()
{
    int i;
    /* �e�F�Ŋe������\�� */
    for (i = 0; i < 4000; i++)
    {
        VRAM[i] = (i << 8) | (0xff & i);
    }

    for (i = 0; i < 40; i++)
    {
        xil_printf("VRAM[%d] = %x %x\n", i, VRAM[i] >> 8, VRAM[i] & 0xff);
    }

    /* ���������S��A�ɂ��Ă݂�      �����̍s�Ƀu���[�N�|�C���g��u���� */
    for (i = 0; i < 4000; i++)
    {
        VRAM_C[i * 4] = 'A';
    }

    for (i = 0; i < 40; i++)
    {
        xil_printf("VRAM[%d] = %x %x\n", i, VRAM[i] >> 8, VRAM[i] & 0xff);
    }

    /* �X�N���[�����čŉ��s���N���A �����̍s�Ƀu���[�N�|�C���g��u���� */
    for (i = 0; i < 3920; i++)
    {
        VRAM[i] = VRAM[i + 80];
    }
    for (i = 3920; i < 4000; i++)
    {
        VRAM[i] = ' ';
    }

    return 0;
}
