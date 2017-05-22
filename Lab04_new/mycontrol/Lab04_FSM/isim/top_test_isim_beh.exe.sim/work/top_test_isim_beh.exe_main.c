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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001184809869_0153913454_init();
    xilinxcorelib_ver_m_00000000001036818086_3680357725_init();
    xilinxcorelib_ver_m_00000000000414557669_0307215962_init();
    xilinxcorelib_ver_m_00000000002216354146_0494403058_init();
    work_m_00000000001664380267_0450250084_init();
    work_m_00000000002115120334_0021815658_init();
    work_m_00000000001649072342_2725559894_init();
    work_m_00000000003484476112_3037777339_init();
    work_m_00000000004125784427_3823007873_init();
    work_m_00000000000201267351_3462089752_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000000201267351_3462089752");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
