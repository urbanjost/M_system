            program demo_system_isdir
            Use M_system, only : system_isdir
            implicit none
            integer                     :: i
            character(len=80),parameter :: names(*)=[ &
            '/tmp            ', &
            '/tmp/NOTTHERE   ', &
            '/usr/local      ', &
            '.               ', &
            'PROBABLY_NOT    ']
            do i=1,size(names)
               write(*,*)' is ',trim(names(i)),' a directory? ', system_isdir(names(i))
            enddo
            end program demo_system_isdir
