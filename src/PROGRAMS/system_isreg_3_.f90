          program demo_system_isreg
          Use M_system, only : system_isreg
          implicit none
          integer                     :: i
          character(len=80),parameter :: names(*)=[ &
          '/tmp            ', &
          'test.txt        ', &
          '.               ']
          do i=1,size(names)
             write(*,*)' is ',trim(names(i)),' a regular file? ', system_isreg(names(i))
          enddo
          end program demo_system_isreg
