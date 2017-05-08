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
    work_m_00000000000024876963_1231684906_init();
    work_m_00000000003667639412_2309632077_init();
    xilinxcorelib_ver_m_00000000001184809869_3226298667_init();
    xilinxcorelib_ver_m_00000000001036818086_2347673473_init();
    xilinxcorelib_ver_m_00000000000414557669_3965278140_init();
    xilinxcorelib_ver_m_00000000002216354146_1999413474_init();
    work_m_00000000003645434707_4081857090_init();
    xilinxcorelib_ver_m_00000000000414557669_0634083059_init();
    xilinxcorelib_ver_m_00000000002216354146_4068334102_init();
    work_m_00000000001664380267_0199030515_init();
    work_m_00000000003091024383_1268154900_init();
    work_m_00000000003258788559_2064989623_init();
    work_m_00000000003169632593_3783644070_init();
    work_m_00000000002133390677_0434794106_init();
    work_m_00000000002804549605_1263554105_init();
    work_m_00000000003777463424_0886308060_init();
    work_m_00000000001454224606_3823007873_init();
    work_m_00000000003079885636_1104345299_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000003079885636_1104345299");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
