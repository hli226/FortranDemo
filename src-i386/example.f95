!######################################################################
    module pro
    use, intrinsic :: iso_c_binding
    implicit none
    public :: square_cube

    contains
!######################################################################


subroutine square_cube(i, isquare, icube) bind(C, name = "squarecube_")
  integer (C_INT) :: i              ! input
  integer (C_INT) :: isquare, icube ! output
  isquare = i**2
  icube   = i**3
end subroutine square_cube
end module pro

