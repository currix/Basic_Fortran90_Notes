PROGRAM ex_4_3
  !
  ! VARIABLES DEFINITION
  IMPLICIT NONE
  REAL, DIMENSION(1:5) :: VA = (/1.0,1.0,1.0,1.0,1.0/), PMAT
  INTEGER I
  INTEGER, DIMENSION(1:5) :: VB = (/(2*I,I=1,5)/) 
  REAL :: PE
  REAL , DIMENSION(1:5,1:5) :: MC
  REAL , DIMENSION(25) :: VC = &
       (/ 0.0,0.0,0.0,0.0,1.0,0.5,2.0,3.2,0.0,0.0, & 
          0.0,0.0,0.0,0.0,11.0,0.5,2.3,3.2,0.0,0.0, & 
          1.0,3.0,-2.0,-2.0,-0.6 /)
  ! Scalar Product
  PE = DOT_PRODUCT(VA,VB)
  !
  PRINT *, 'Scalar Product (VA,VB) = ', PE
  !
  ! Product of matrices VAxMC
  ! RESHAPE VC to make it a  5 x 5 matrix
  MC = RESHAPE(VC,(/5,5/))
  PMAT = MATMUL(VA,MC)
  !
  PRINT *, ' VA x MC = ', PMAT(1:5)
  !
END PROGRAM ex_4_3
