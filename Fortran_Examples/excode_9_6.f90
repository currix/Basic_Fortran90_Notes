PROGRAM ex_9_6
  !
  IMPLICIT NONE
  !
  INTEGER :: I, IERR
  REAL, DIMENSION(:), ALLOCATABLE :: X, Y
  REAL :: M, SD, MEDIAN
  ! interface block   
  INTERFACE
     SUBROUTINE STATS(VECTOR,N,MEAN,STD_DEV,MEDIAN)
       IMPLICIT NONE
       INTEGER , INTENT(IN)                    ::  N
       REAL      , INTENT(IN) , DIMENSION(:)   :: VECTOR  
       REAL      , INTENT(OUT)                 :: MEAN
       REAL      , INTENT(OUT)                 :: STD_DEV
       REAL      , INTENT(OUT)                 :: MEDIAN
     END SUBROUTINE STATS
  END INTERFACE
  !
  READ*, I  
  !
  ALLOCATE(X(1:I), STAT = IERR)    
  IF (IERR /= 0) THEN
     PRINT*, "X allocation request denied."
     STOP
  ENDIF
  !
  ALLOCATE(Y(1:I), STAT = IERR)    
  IF (IERR /= 0) THEN
     PRINT*, "Y allocation request denied."
     STOP
  ENDIF
  !
  CALL BOX_MULLER(I)
  !
  PRINT*, X
  CALL STATS(X,I,M,SD,MEDIAN)
  !
  PRINT *,' MEAN = ',M
  PRINT *,' STANDARD DEVIATION = ',SD
  PRINT *,' MEDIAN IS = ',MEDIAN
  !
  IF (ALLOCATED(X)) DEALLOCATE(X, STAT = IERR) 
  IF (IERR /= 0) THEN
     PRINT*, "X NON DEALLOCATED!"
     STOP
  ENDIF
  PRINT*, Y
  CALL STATS(Y,I,M,SD,MEDIAN)
  !
  PRINT *,' MEAN = ',M
  PRINT *,' STANDARD DEVIATION = ',SD
  PRINT *,' MEDIAN IS = ',MEDIAN
  !
  IF (ALLOCATED(Y)) DEALLOCATE(Y, STAT = IERR)   
  IF (IERR /= 0) THEN
     PRINT*, "Y NON DEALLOCATED!"
     STOP
  ENDIF
  !
CONTAINS
  !
  SUBROUTINE BOX_MULLER(dim)
    ! 
    ! Uses the Box-Muller method to create two normally distributed vectors
    !
    INTEGER, INTENT(IN) :: dim
    !
    REAL, PARAMETER :: PI = ACOS(-1.0)
    REAL, DIMENSION(dim) :: RANDOM_u, RANDOM_v ! Automatic arrays
    !
    CALL RANDOM_NUMBER(RANDOM_u)
    CALL RANDOM_NUMBER(RANDOM_v)
    !
    X = SQRT(-2.0*LOG(RANDOM_u))
    Y = X*SIN(2*PI*RANDOM_v)
    X = X*COS(2*PI*RANDOM_v)
    !
  END SUBROUTINE BOX_MULLER
  !
END PROGRAM ex_9_6
!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!
SUBROUTINE STATS(VECTOR,N,MEAN,STD_DEV,MEDIAN)
  IMPLICIT NONE
  ! Arguments
  INTEGER , INTENT(IN)                    ::  N
  REAL      , INTENT(IN) , DIMENSION(:)    ::  VECTOR    !! (1)
  REAL      , INTENT(OUT)                  ::  MEAN
  REAL      , INTENT(OUT)                  ::  STD_DEV
  REAL      , INTENT(OUT)                  ::  MEDIAN
  ! Local Variables
  REAL      , DIMENSION(1:N)              ::  Y
  REAL      :: VARIANCE = 0.0
  REAL      :: SUMXI = 0.0, SUMXI2 = 0.0
  !
  SUMXI=SUM(VECTOR)       !! (6)
  SUMXI2=SUM(VECTOR*VECTOR)    !! (6)
  MEAN=SUMXI/N       
  VARIANCE=(SUMXI2-SUMXI*SUMXI/N)/(N-1)
  STD_DEV = SQRT(VARIANCE)
  Y=VECTOR
  ! Sort values
  CALL SELECTION
  IF (MOD(N,2) == 0) THEN
     MEDIAN=(Y(N/2)+Y((N/2)+1))/2
  ELSE
     MEDIAN=Y((N/2)+1)
  ENDIF
CONTAINS     !! (7)
  SUBROUTINE SELECTION
    IMPLICIT NONE
    INTEGER :: I,J,K
    REAL :: MINIMUM
    DO I=1,N-1
       K=I
       MINIMUM=Y(I)
       DO J=I+1,N
          IF (Y(J) < MINIMUM) THEN
             K=J
             MINIMUM=Y(K)
          END IF
       END DO
       Y(K)=Y(I)
       Y(I)=MINIMUM
    END DO
  END SUBROUTINE SELECTION
END SUBROUTINE STATS
