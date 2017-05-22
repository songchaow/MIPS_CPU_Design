/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x16fbe694 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ISE Project/COD/ALU/top.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};



static void Always_35_0(char *t0)
{
    char t8[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3960);
    *((int *)t2) = 1;
    t3 = (t0 + 3672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 2320U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(39, ng0);

LAB22:    goto LAB21;

LAB9:    xsi_set_current_line(43, ng0);

LAB23:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t7, 32);
    t3 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t3, t8, 0, 0, 32, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(47, ng0);

LAB24:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t8, 0, 8);
    xsi_vlog_signed_minus(t8, 32, t4, 32, t7, 32);
    t3 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t3, t8, 0, 0, 32, 0LL);
    goto LAB21;

LAB13:    xsi_set_current_line(51, ng0);

LAB25:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t8, 0, 8);
    xsi_vlog_signed_bit_and(t8, 32, t4, 32, t7, 32);
    t3 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t3, t8, 0, 0, 32, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(55, ng0);

LAB26:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t8, 0, 8);
    xsi_vlog_signed_bit_or(t8, 32, t4, 32, t7, 32);
    t3 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t3, t8, 0, 0, 32, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(59, ng0);

LAB27:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t7 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 4294967295U);
    if (t13 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t3) != 0)
        goto LAB30;

LAB31:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t8);
    t18 = (t16 ^ t17);
    *((unsigned int *)t15) = t18;
    t19 = (t4 + 4);
    t20 = (t8 + 4);
    t21 = (t15 + 4);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t20);
    t24 = (t22 | t23);
    *((unsigned int *)t21) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB32;

LAB33:
LAB34:    t29 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t29, t15, 0, 0, 32, 0LL);
    goto LAB21;

LAB19:    xsi_set_current_line(63, ng0);

LAB35:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 2000U);
    t4 = *((char **)t3);
    t3 = (t0 + 2160U);
    t7 = *((char **)t3);
    memset(t15, 0, 8);
    xsi_vlog_signed_bit_or(t15, 32, t4, 32, t7, 32);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t14 = (t15 + 4);
    memcpy(t8, t15, 8);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t10 | t11);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t13 & 4294967295U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 4294967295U);
    t19 = (t0 + 2720);
    xsi_vlogvar_wait_assign_value(t19, t8, 0, 0, 32, 0LL);
    goto LAB21;

LAB28:    *((unsigned int *)t8) = 1;
    goto LAB31;

LAB30:    t14 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB31;

LAB32:    t27 = *((unsigned int *)t15);
    t28 = *((unsigned int *)t21);
    *((unsigned int *)t15) = (t27 | t28);
    goto LAB34;

}


extern void work_m_00000000001649072342_3823007873_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000001649072342_3823007873", "isim/simueach_isim_beh.exe.sim/work/m_00000000001649072342_3823007873.didat");
	xsi_register_executes(pe);
}
