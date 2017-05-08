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
    work_m_00000000003169632593_3783644070_init();
    work_m_00000000001649072342_0886308060_init();
    xilinxcorelib_ver_m_00000000001184809869_0776065118_init();
    xilinxcorelib_ver_m_00000000001036818086_0193980919_init();
    xilinxcorelib_ver_m_00000000000414557669_4003145839_init();
    xilinxcorelib_ver_m_00000000002216354146_2095677843_init();
    work_m_00000000001664380267_2356217838_init();
    work_m_00000000004283845030_3037777339_init();
    work_m_00000000003704600465_3823007873_init();
    work_m_00000000001598531926_1104345299_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000001598531926_1104345299");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
