PROGRAM ex_7_4
  !
  ! Internal file example
  !
  IMPLICIT NONE
  ! Variables
  REAL :: x_var
  INTEGER :: unit_n, index_X
  CHARACTER(LEN=65) :: filename
  CHARACTER(LEN=56) :: pref
  !
  PRINT*, "Introduce file name preffix: "
  READ(*,*) pref
  !
  DO unit_n = 10, 20
     !
     WRITE(filename, '(A, "_", i2,".dat")') TRIM(pref), unit_n
     OPEN(UNIT = unit_n, FILE = filename, STATUS = "UNKNOWN", ACTION = "WRITE")
     !
     DO index_X = 0, 100
        x_var = REAL(index_X)*0.01
        WRITE(unit_n, '(1X,2ES14.6)') x_var, SIN(REAL(unit_n)*x_var)
     ENDDO
     !
     CLOSE(UNIT = unit_n)
     !
  ENDDO
!
END PROGRAM ex_7_4
