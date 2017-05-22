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
static const char *ng0 = "D:/ISE Project/COD/Lab04_new/mycontrol/Lab04_FSM/control.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static int ng4[] = {100, 0};
static int ng5[] = {200, 0};



static void Always_64_0(char *t0)
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

LAB0:    t1 = (t0 + 5696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6760);
    *((int *)t2) = 1;
    t3 = (t0 + 5728);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t5 = (t0 + 2296U);
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

LAB13:    xsi_set_current_line(68, ng0);

LAB16:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 3, 0LL);

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

LAB12:    xsi_set_current_line(65, ng0);

LAB15:    xsi_set_current_line(66, ng0);
    t29 = (t0 + 472);
    t30 = *((char **)t29);
    t29 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t29, t30, 0, 0, 3, 0LL);
    goto LAB14;

}

static void Always_73_1(char *t0)
{
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;

LAB0:    t1 = (t0 + 5944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6776);
    *((int *)t2) = 1;
    t3 = (t0 + 5976);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);

LAB5:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 4456);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 472);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t3, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t3, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t3, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 3, t3, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 4616);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(75, ng0);
    t7 = (t0 + 608);
    t10 = *((char **)t7);
    t7 = (t0 + 4616);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 3);
    goto LAB21;

LAB9:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 744);
    t4 = *((char **)t2);
    t2 = (t0 + 4616);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 3);
    goto LAB21;

LAB11:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 880);
    t4 = *((char **)t2);
    t2 = (t0 + 4616);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 3);
    goto LAB21;

LAB13:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1016);
    t4 = *((char **)t2);
    t2 = (t0 + 4616);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 3);
    goto LAB21;

LAB15:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2456U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_unary_minus(t13, 32, t2, 32);
    memset(t14, 0, 8);
    t5 = (t4 + 4);
    t7 = (t13 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t13);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t7);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t5);
    t23 = *((unsigned int *)t7);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB23;

LAB22:    if (t24 != 0)
        goto LAB24;

LAB25:    memset(t12, 0, 8);
    t10 = (t14 + 4);
    t27 = *((unsigned int *)t10);
    t28 = (~(t27));
    t29 = *((unsigned int *)t14);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t10) != 0)
        goto LAB28;

LAB29:    t33 = (t12 + 4);
    t34 = *((unsigned int *)t12);
    t35 = *((unsigned int *)t33);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB30;

LAB31:    t39 = *((unsigned int *)t12);
    t40 = (~(t39));
    t41 = *((unsigned int *)t33);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t33) > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t12) > 0)
        goto LAB36;

LAB37:    memcpy(t11, t43, 8);

LAB38:    t37 = (t0 + 4616);
    xsi_vlogvar_assign_value(t37, t11, 0, 0, 3);
    goto LAB21;

LAB17:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1152);
    t4 = *((char **)t2);
    t2 = (t0 + 4616);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 3);
    goto LAB21;

LAB23:    *((unsigned int *)t14) = 1;
    goto LAB25;

LAB24:    t8 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t12) = 1;
    goto LAB29;

LAB28:    t32 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB29;

LAB30:    t37 = (t0 + 744);
    t38 = *((char **)t37);
    goto LAB31;

LAB32:    t37 = (t0 + 1152);
    t43 = *((char **)t37);
    goto LAB33;

LAB34:    xsi_vlog_unsigned_bit_combine(t11, 32, t38, 32, t43, 32);
    goto LAB38;

LAB36:    memcpy(t11, t38, 8);
    goto LAB38;

}

static void Cont_86_2(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 6192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3176);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t20 = *((unsigned int *)t4);
    t21 = (~(t20));
    t22 = *((unsigned int *)t14);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t24, 8);

LAB16:    t18 = (t0 + 6888);
    t25 = (t18 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8);
    xsi_driver_vfirst_trans(t18, 0, 31);
    t29 = (t0 + 6792);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 2456U);
    t19 = *((char **)t18);
    goto LAB9;

LAB10:    t18 = (t0 + 2616U);
    t24 = *((char **)t18);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t19, 32, t24, 32);
    goto LAB16;

LAB14:    memcpy(t3, t19, 8);
    goto LAB16;

}

static void Always_88_3(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
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
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;

LAB0:    t1 = (t0 + 6440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6808);
    *((int *)t2) = 1;
    t3 = (t0 + 6472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);

LAB5:    xsi_set_current_line(89, ng0);
    t5 = (t0 + 2296U);
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

LAB13:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 608);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB19;

LAB16:    if (t19 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB19:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 744);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB27;

LAB24:    if (t19 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t4) = 1;

LAB27:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 880);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB35;

LAB32:    if (t19 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t4) = 1;

LAB35:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1016);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB43;

LAB40:    if (t19 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t4) = 1;

LAB43:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1152);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t13);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB59;

LAB56:    if (t19 != 0)
        goto LAB58;

LAB57:    *((unsigned int *)t4) = 1;

LAB59:    t23 = (t4 + 4);
    t22 = *((unsigned int *)t23);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB60;

LAB61:
LAB62:
LAB46:
LAB38:
LAB30:
LAB22:
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

LAB12:    xsi_set_current_line(89, ng0);

LAB15:    xsi_set_current_line(90, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 4776);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 5, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB14;

LAB18:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(94, ng0);

LAB23:    xsi_set_current_line(95, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4776);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_multiply(t4, 32, t2, 32, t6, 5);
    t12 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 8, 0LL);
    goto LAB22;

LAB26:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB27;

LAB28:    xsi_set_current_line(100, ng0);

LAB31:    xsi_set_current_line(101, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4776);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_multiply(t4, 32, t2, 32, t6, 5);
    t12 = ((char*)((ng1)));
    memset(t31, 0, 8);
    xsi_vlog_unsigned_add(t31, 32, t4, 32, t12, 32);
    t13 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t13, t31, 0, 0, 8, 0LL);
    goto LAB30;

LAB34:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(111, ng0);

LAB39:    xsi_set_current_line(112, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 5, t6, 32);
    t12 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 5, t6, 32);
    t12 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 5, t6, 32);
    t12 = (t0 + 4776);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 5, 0LL);
    goto LAB38;

LAB42:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(124, ng0);

LAB47:    xsi_set_current_line(125, ng0);
    t29 = (t0 + 2456U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng1)));
    memset(t31, 0, 8);
    xsi_vlog_unsigned_unary_minus(t31, 32, t29, 32);
    memset(t32, 0, 8);
    t33 = (t30 + 4);
    t34 = (t31 + 4);
    t28 = *((unsigned int *)t30);
    t35 = *((unsigned int *)t31);
    t36 = (t28 ^ t35);
    t37 = *((unsigned int *)t33);
    t38 = *((unsigned int *)t34);
    t39 = (t37 ^ t38);
    t40 = (t36 | t39);
    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t34);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB49;

LAB48:    if (t43 != 0)
        goto LAB50;

LAB51:    t47 = (t32 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t32);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB52;

LAB53:
LAB54:    goto LAB46;

LAB49:    *((unsigned int *)t32) = 1;
    goto LAB51;

LAB50:    t46 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(125, ng0);

LAB55:    xsi_set_current_line(126, ng0);
    t53 = ((char*)((ng1)));
    t54 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t54, t53, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4776);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_multiply(t4, 32, t2, 32, t6, 5);
    t12 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 8, 0LL);
    goto LAB54;

LAB58:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB59;

LAB60:    xsi_set_current_line(133, ng0);

LAB63:    xsi_set_current_line(134, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB62;

}


extern void work_m_00000000003484476112_3037777339_init()
{
	static char *pe[] = {(void *)Always_64_0,(void *)Always_73_1,(void *)Cont_86_2,(void *)Always_88_3};
	xsi_register_didat("work_m_00000000003484476112_3037777339", "isim/top_test_isim_beh.exe.sim/work/m_00000000003484476112_3037777339.didat");
	xsi_register_executes(pe);
}
