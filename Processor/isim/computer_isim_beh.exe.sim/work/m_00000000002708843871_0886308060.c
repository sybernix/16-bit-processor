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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Circuit Systems and Design1/MyProcessor/Phase 21 - 1.7.2017/Processor to test/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static int ng9[] = {1, 0};
static int ng10[] = {2, 0};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(36, ng0);

LAB2:    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3040);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_40_1(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 4528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    t3 = (t0 + 4560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 2160U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 2320U);
    t8 = *((char **)t7);
    t7 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 16, 0LL);
    goto LAB23;

LAB9:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 2480U);
    t4 = *((char **)t3);
    t3 = (t0 + 2320U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 | t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB24;

LAB25:
LAB26:    t35 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t35, t9, 0, 0, 16, 0LL);
    goto LAB23;

LAB11:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 2320U);
    t4 = *((char **)t3);
    t3 = (t0 + 2480U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB23;

LAB13:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2320U);
    t4 = *((char **)t3);
    t3 = (t0 + 2480U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB23;

LAB15:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2320U);
    t4 = *((char **)t3);
    t3 = (t0 + 2480U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 16, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 2480U);
    t4 = *((char **)t3);
    t3 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 16, 0LL);
    goto LAB23;

LAB19:    xsi_set_current_line(50, ng0);

LAB27:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 2320U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng9)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 16, t3, 32);
    t7 = (t0 + 3360);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3360);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t7 = (t9 + 4);
    t8 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t8);
    t14 = (t12 >> 0);
    *((unsigned int *)t7) = t14;
    t15 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t15 & 65535U);
    t16 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t16 & 65535U);
    t13 = (t0 + 3200);
    xsi_vlogvar_wait_assign_value(t13, t9, 0, 0, 16, 0LL);
    goto LAB23;

LAB24:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t9) = (t19 | t20);
    t21 = (t4 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = *((unsigned int *)t22);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t30 = (t29 & t28);
    t31 = (~(t26));
    t32 = (~(t30));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t31);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t32);
    goto LAB26;

}

static void Always_58_2(char *t0)
{
    char t8[8];
    char t24[8];
    char t38[8];
    char t45[8];
    char t85[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    int t69;
    int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;

LAB0:    t1 = (t0 + 4776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5112);
    *((int *)t2) = 1;
    t3 = (t0 + 4808);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 3040);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng9)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    memset(t24, 0, 8);
    t25 = (t8 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t25) != 0)
        goto LAB12;

LAB13:    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB14;

LAB15:    memcpy(t45, t24, 8);

LAB16:    t77 = (t45 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t45);
    t81 = (t80 & t79);
    t82 = (t81 != 0);
    if (t82 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2160U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng10)));
    memset(t8, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t2);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t5);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB30;

LAB27:    if (t20 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t8) = 1;

LAB30:    memset(t24, 0, 8);
    t7 = (t8 + 4);
    t26 = *((unsigned int *)t7);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t7) != 0)
        goto LAB33;

LAB34:    t10 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = *((unsigned int *)t10);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB35;

LAB36:    memcpy(t85, t24, 8);

LAB37:    t84 = (t85 + 4);
    t93 = *((unsigned int *)t84);
    t94 = (~(t93));
    t95 = *((unsigned int *)t85);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB49;

LAB50:
LAB51:
LAB26:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t24) = 1;
    goto LAB13;

LAB12:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB13;

LAB14:    t36 = (t0 + 2640U);
    t37 = *((char **)t36);
    memset(t38, 0, 8);
    t36 = (t37 + 4);
    t39 = *((unsigned int *)t36);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t36) != 0)
        goto LAB19;

LAB20:    t46 = *((unsigned int *)t24);
    t47 = *((unsigned int *)t38);
    t48 = (t46 & t47);
    *((unsigned int *)t45) = t48;
    t49 = (t24 + 4);
    t50 = (t38 + 4);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t38) = 1;
    goto LAB20;

LAB19:    t44 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB20;

LAB21:    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    *((unsigned int *)t45) = (t57 | t58);
    t59 = (t24 + 4);
    t60 = (t38 + 4);
    t61 = *((unsigned int *)t24);
    t62 = (~(t61));
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    t65 = *((unsigned int *)t38);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (~(t67));
    t69 = (t62 & t64);
    t70 = (t66 & t68);
    t71 = (~(t69));
    t72 = (~(t70));
    t73 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t73 & t71);
    t74 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t74 & t72);
    t75 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t75 & t71);
    t76 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t76 & t72);
    goto LAB23;

LAB24:    xsi_set_current_line(61, ng0);
    t83 = ((char*)((ng1)));
    t84 = (t0 + 3040);
    xsi_vlogvar_assign_value(t84, t83, 0, 0, 1);
    goto LAB26;

LAB29:    t6 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB30;

LAB31:    *((unsigned int *)t24) = 1;
    goto LAB34;

LAB33:    t9 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB34;

LAB35:    t23 = (t0 + 3200);
    t25 = (t23 + 56U);
    t31 = *((char **)t25);
    t32 = ((char*)((ng1)));
    memset(t38, 0, 8);
    t36 = (t31 + 4);
    t37 = (t32 + 4);
    t39 = *((unsigned int *)t31);
    t40 = *((unsigned int *)t32);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t36);
    t43 = *((unsigned int *)t37);
    t46 = (t42 ^ t43);
    t47 = (t41 | t46);
    t48 = *((unsigned int *)t36);
    t52 = *((unsigned int *)t37);
    t53 = (t48 | t52);
    t54 = (~(t53));
    t55 = (t47 & t54);
    if (t55 != 0)
        goto LAB41;

LAB38:    if (t53 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t38) = 1;

LAB41:    memset(t45, 0, 8);
    t49 = (t38 + 4);
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t61 = (t58 & t57);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t49) != 0)
        goto LAB44;

LAB45:    t63 = *((unsigned int *)t24);
    t64 = *((unsigned int *)t45);
    t65 = (t63 & t64);
    *((unsigned int *)t85) = t65;
    t51 = (t24 + 4);
    t59 = (t45 + 4);
    t60 = (t85 + 4);
    t66 = *((unsigned int *)t51);
    t67 = *((unsigned int *)t59);
    t68 = (t66 | t67);
    *((unsigned int *)t60) = t68;
    t71 = *((unsigned int *)t60);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB46;

LAB47:
LAB48:    goto LAB37;

LAB40:    t44 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t45) = 1;
    goto LAB45;

LAB44:    t50 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB45;

LAB46:    t73 = *((unsigned int *)t85);
    t74 = *((unsigned int *)t60);
    *((unsigned int *)t85) = (t73 | t74);
    t77 = (t24 + 4);
    t83 = (t45 + 4);
    t75 = *((unsigned int *)t24);
    t76 = (~(t75));
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t45);
    t81 = (~(t80));
    t82 = *((unsigned int *)t83);
    t86 = (~(t82));
    t69 = (t76 & t79);
    t70 = (t81 & t86);
    t87 = (~(t69));
    t88 = (~(t70));
    t89 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t88);
    t91 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t91 & t87);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t92 & t88);
    goto LAB48;

LAB49:    xsi_set_current_line(63, ng0);
    t98 = ((char*)((ng9)));
    t99 = (t0 + 3040);
    xsi_vlogvar_assign_value(t99, t98, 0, 0, 1);
    goto LAB51;

}


extern void work_m_00000000002708843871_0886308060_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_40_1,(void *)Always_58_2};
	xsi_register_didat("work_m_00000000002708843871_0886308060", "isim/computer_isim_beh.exe.sim/work/m_00000000002708843871_0886308060.didat");
	xsi_register_executes(pe);
}
