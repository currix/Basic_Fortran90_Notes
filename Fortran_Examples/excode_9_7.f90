PROGRAM ex_9_7
  !
  IMPLICIT NONE
  !
  INTERFACE
     SUBROUTINE SUBEXAMPLE(IMIN, IMAX, FACT_MAT)
       INTEGER, intent(in) :: IMIN, IMAX
       REAL, DIMENSION(IMIN:), intent(out) :: FACT_MAT
     END SUBROUTINE SUBEXAMPLE
  END INTERFACE
  !
  ! Variables
  REAL, DIMENSION(:), ALLOCATABLE :: FACT_MAT
  INTEGER :: IMIN, IMAX, I
  !
  IMIN = 0
  IMAX = 5
  !
  ALLOCATE(FACT_MAT(IMIN:IMAX))
  !
  PRINT*, "MAIN", SIZE(FACT_MAT)
  !
  CALL SUBEXAMPLE(IMIN, IMAX, FACT_MAT)
  !
  DO I = IMIN, IMAX
     PRINT*, I, FACT_MAT(I)
  ENDDO
  !
END PROGRAM ex_9_7
!!!!!!!!!!
!!!!!!!!!!
SUBROUTINE SUBEXAMPLE(IMIN, IMAX, FACT_MAT)
  !
  IMPLICIT NONE
  INTEGER, intent(in) :: IMIN, IMAX
  REAL, DIMENSION(IMIN:), intent(out) :: FACT_MAT
  ! The subroutine with the next line only would work for IMIN = 1
  !  REAL, DIMENSION(:), intent(out) :: FACT_MAT
  !
  INTEGER :: j,k
  !
  PRINT*, "SUB", SIZE(FACT_MAT)
  !
  DO j = imin, imax
     fact_mat(j) = 1.0
     do k = 2, j
        fact_mat(j) = k*fact_mat(j)
     enddo
  ENDDO
  !
  !
END SUBROUTINE SUBEXAMPLE
