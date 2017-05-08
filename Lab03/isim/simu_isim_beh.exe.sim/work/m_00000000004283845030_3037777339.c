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
static const char *ng0 = "D:/ISE Project/COD/Lab03/control.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {3, 0};
static int ng5[] = {2, 0};
static int ng6[] = {11, 0};
static int ng7[] = {12, 0};
static int ng8[] = {13, 0};
static int ng9[] = {14, 0};
static int ng10[] = {4, 0};
static int ng11[] = {5, 0};
static int ng12[] = {6, 0};
static int ng13[] = {7, 0};
static int ng14[] = {31, 0};
static int ng15[] = {10, 0};
static int ng16[] = {8, 0};
static int ng17[] = {9, 0};



static void Always_55_0(char *t0)
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

LAB0:    t1 = (t0 + 5088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5408);
    *((int *)t2) = 1;
    t3 = (t0 + 5120);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);

LAB5:    xsi_set_current_line(57, ng0);
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

LAB13:    xsi_set_current_line(71, ng0);

LAB16:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2248);
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

LAB21:    t2 = ((char*)((ng5)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
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

LAB33:    t2 = ((char*)((ng10)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng11)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng12)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng13)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng16)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng17)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng15)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 32);
    if (t31 == 1)
        goto LAB46;

LAB47:
LAB49:
LAB48:    xsi_set_current_line(158, ng0);

LAB73:    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB50:
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

LAB12:    xsi_set_current_line(58, ng0);

LAB15:    xsi_set_current_line(59, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 6, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB14;

LAB18:    xsi_set_current_line(74, ng0);

LAB51:    xsi_set_current_line(75, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB20:    xsi_set_current_line(79, ng0);

LAB52:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng5)));
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB50;

LAB22:    xsi_set_current_line(83, ng0);

LAB53:    xsi_set_current_line(84, ng0);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB24:    xsi_set_current_line(88, ng0);

LAB54:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng6)));
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB50;

LAB26:    xsi_set_current_line(93, ng0);

LAB55:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng2)));
    t6 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB28:    xsi_set_current_line(99, ng0);

LAB56:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng8)));
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB50;

LAB30:    xsi_set_current_line(103, ng0);

LAB57:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 1368U);
    t6 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB32:    xsi_set_current_line(108, ng0);

LAB58:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng10)));
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB50;

LAB34:    xsi_set_current_line(112, ng0);

LAB59:    xsi_set_current_line(113, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB36:    xsi_set_current_line(117, ng0);

LAB60:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 2568);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t12, 5, t13, 32);
    t14 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 5, t12, 32);
    t13 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 6, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB38:    xsi_set_current_line(127, ng0);

LAB61:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 1528U);
    t6 = *((char **)t3);
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB40:    xsi_set_current_line(133, ng0);

LAB62:    xsi_set_current_line(135, ng0);
    t3 = ((char*)((ng2)));
    t6 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng14)));
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
        goto LAB66;

LAB63:    if (t19 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t4) = 1;

LAB66:    t29 = (t4 + 4);
    t22 = *((unsigned int *)t29);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB67;

LAB68:    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB69:    goto LAB50;

LAB42:    xsi_set_current_line(141, ng0);

LAB70:    xsi_set_current_line(142, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 5, t12, 32);
    t13 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 5, t12, 32);
    t13 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB50;

LAB44:    xsi_set_current_line(148, ng0);

LAB71:    xsi_set_current_line(149, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t12 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t6, 6, t12, 32);
    t13 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 6, 0LL);
    goto LAB50;

LAB46:    xsi_set_current_line(154, ng0);

LAB72:    xsi_set_current_line(155, ng0);
    t3 = ((char*)((ng15)));
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 6, 0LL);
    goto LAB50;

LAB65:    t23 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB66;

LAB67:    xsi_set_current_line(137, ng0);
    t30 = ((char*)((ng15)));
    t32 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t32, t30, 0, 0, 6, 0LL);
    goto LAB69;

}


extern void work_m_00000000004283845030_3037777339_init()
{
	static char *pe[] = {(void *)Always_55_0};
	xsi_register_didat("work_m_00000000004283845030_3037777339", "isim/simu_isim_beh.exe.sim/work/m_00000000004283845030_3037777339.didat");
	xsi_register_executes(pe);
}
