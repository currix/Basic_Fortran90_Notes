PROGRAM ex_1_1
  !
  ! This program reads and displays a string.
  !
  IMPLICIT NONE
  CHARACTER(LEN=50) :: Name
  !
  PRINT *,' Write your name. Do not forget quoting it:'
  PRINT *,' (max 50 characters)'
  READ(*,*), Name
  PRINT *, Name
  !
END PROGRAM ex_1_1
