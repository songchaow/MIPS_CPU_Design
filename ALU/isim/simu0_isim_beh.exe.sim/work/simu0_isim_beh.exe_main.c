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
    work_m_00000000001649072342_3823007873_init();
    work_m_00000000002805765691_1104345299_init();
    work_m_00000000002469822279_0069355658_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000002469822279_0069355658");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
