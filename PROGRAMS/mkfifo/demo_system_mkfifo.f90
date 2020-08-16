          program demo_system_mkfifo
          use M_system, only : system_mkfifo, system_perror
          use M_system, only : W_USR, R_USR, R_GRP, R_OTH
          implicit none
             integer :: status
             status = system_mkfifo("/tmp/buffer", IANY([W_USR, R_USR, R_GRP, R_OTH]))
             if(status.ne.0)then
                call system_perror('*mkfifo* error:')
             endif
          end program demo_system_mkfifo
