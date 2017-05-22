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
static const char *ng0 = "D:/ISE Project/COD/RegFile/top.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {6, 0};
static int ng9[] = {7, 0};
static int ng10[] = {31, 0};
static int ng11[] = {10, 0};
static int ng12[] = {8, 0};
static int ng13[] = {9, 0};



static void Always_39_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    t3 = (t0 + 4160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(50, ng0);

LAB16:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB17:    t6 = ((char*)((ng1)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t6, 32);
    if (t31 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng2)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng4)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng5)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng6)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng7)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng8)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng9)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng12)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng13)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng11)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB38;

LAB39:
LAB41:
LAB40:    xsi_set_current_line(111, ng0);

LAB61:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB42:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(42, ng0);

LAB15:    xsi_set_current_line(43, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 6, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB14;

LAB18:    xsi_set_current_line(53, ng0);

LAB43:    xsi_set_current_line(54, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB42;

LAB20:    xsi_set_current_line(60, ng0);

LAB44:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng4)));
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB42;

LAB22:    xsi_set_current_line(64, ng0);

LAB45:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng2)));
    t6 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB42;

LAB24:    xsi_set_current_line(69, ng0);

LAB46:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng6)));
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB42;

LAB26:    xsi_set_current_line(73, ng0);

LAB47:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB42;

LAB28:    xsi_set_current_line(78, ng0);

LAB48:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 2408);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t12, 5, t13, 32);
    t14 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB42;

LAB30:    xsi_set_current_line(86, ng0);

LAB49:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng9)));
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB42;

LAB32:    xsi_set_current_line(90, ng0);

LAB50:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng10)));
    memset(t4, 0, 8);
    t13 = (t6 + 4);
    t14 = (t12 + 4);
    t7 = *((unsigned int *)t6);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t14);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t13);
    t18 = *((unsigned int *)t14);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB54;

LAB51:    if (t19 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t4) = 1;

LAB54:    t29 = (t4 + 4);
    t22 = *((unsigned int *)t29);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB57:    goto LAB42;

LAB34:    xsi_set_current_line(97, ng0);

LAB58:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 2248);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t12, 5, t13, 32);
    t14 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 5, t12, 32);
    t13 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB42;

LAB36:    xsi_set_current_line(103, ng0);

LAB59:    xsi_set_current_line(104, ng0);
    t3 = ((char*)((ng7)));
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB42;

LAB38:    xsi_set_current_line(107, ng0);

LAB60:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng11)));
    t6 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB42;

LAB53:    t23 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(93, ng0);
    t30 = ((char*)((ng11)));
    t32 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t32, t30, 0, 0, 6, 0LL);
    goto LAB57;

}


extern void work_m_00000000002516259889_3823007873_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000002516259889_3823007873", "isim/simu_isim_beh.exe.sim/work/m_00000000002516259889_3823007873.didat");
	xsi_register_executes(pe);
}
