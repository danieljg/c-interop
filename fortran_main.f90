program interop_main
use, intrinsic :: iso_c_binding
implicit none
integer, parameter :: nn=3
real(kind=8)   :: xx,   yy,   zz(nn)
real(c_double) :: xx_c, yy_c, zz_c(nn)
integer(c_int) :: return_value, nn_c=nn
interface
 integer(c_int) function test_function(x,y,z,n) bind(c)
 use, intrinsic :: iso_c_binding
 import :: nn
 implicit none
 real(c_double), value :: x
 real(c_double) :: y, z(nn)
 integer(c_int), value :: n
 end function test_function
end interface
xx=2.0*atan(1.0)
xx_c=xx
yy_c=3.0
write(*,*)'pi/2 = ',xx
return_value = test_function(xx_c,yy_c,zz_c,nn_c)
yy=yy_c
zz=zz_c
write(*,*)'return_value = ',return_value
write(*,*)'pi = ',yy
write(*,*)zz
end program
