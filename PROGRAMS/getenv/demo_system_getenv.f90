          program demo_system_getenv
          use M_system, only : system_getenv
          implicit none
          integer :: ierr

             write(*,'("USER     : ",a)')system_getenv('USER')
             write(*,'("LOGNAME  : ",a)')system_getenv('LOGNAME')
             write(*,'("USERNAME : ",a)')system_getenv('USERNAME')

              end program demo_system_getenv
