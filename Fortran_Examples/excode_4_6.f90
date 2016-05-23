PROGRAM ex_4_6
  !
  ! DEFINITION OF VARIABLES
  IMPLICIT NONE
  INTEGER, DIMENSION(1:3,1:3) :: A = RESHAPE( (/ 1,2,3,4,5,6,7,8,9 /), (/ 3,3 /) )
  !
  !
  !      1  4  7     
  !  A = 2  5  8
  !      3  6  9
  !
  PRINT*, "Matrix Element", A(2,3)
  PRINT*, "Submatrix", A(1:2,2:3)
  PRINT*, "Submatrix", A(::2,::2)
  PRINT*, "Matrix Column", A(:,3)
  PRINT*, "Matrix Row", A(2,:)
  PRINT*, "Full Matrix", A
  PRINT*, "Transposed Matrix", TRANSPOSE(A)
END PROGRAM ex_4_6
