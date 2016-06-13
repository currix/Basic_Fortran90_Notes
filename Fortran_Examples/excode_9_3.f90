PROGRAM ex_9_3
  !
  IMPLICIT NONE
  !
  ! Variables
  INTEGER :: N
  REAL , ALLOCATABLE , DIMENSION(:) :: X  !! (1)
  REAL :: M,SD,MEDIAN
  INTEGER :: IERR
  !
  ! interface block   !! (2)
  INTERFACE
     SUBROUTINE STATS(VECTOR,N,MEAN,STD_DEV,MEDIAN)
       IMPLICIT NONE
       INTEGER , INTENT(IN)                    ::  N
       REAL      , INTENT(IN) , DIMENSION(:)   :: VECTOR  !!  (1)
       REAL      , INTENT(OUT)                 :: MEAN
       REAL      , INTENT(OUT)                 :: STD_DEV
       REAL      , INTENT(OUT)                 :: MEDIAN
     END SUBROUTINE STATS
  END INTERFACE
  PRINT *,' Length of random values vector ?'
  READ *,N
  ALLOCATE(X(1:N), STAT = IERR)     !!  (3)
  IF (IERR /= 0) THEN
     PRINT*, "X allocation request denied."
     STOP
  ENDIF
  CALL RANDOM_NUMBER(X)
  X=X*1000             !!  (4)
  CALL STATS(X,N,M,SD,MEDIAN)
  !
  PRINT *,' MEAN = ',M
  PRINT *,' STANDARD DEVIATION = ',SD
  PRINT *,' MEDIAN IS = ',MEDIAN
  !
  IF (ALLOCATED(X)) DEALLOCATE(X, STAT = IERR)   !! (5)
  IF (IERR /= 0) THEN
     PRINT*, "X NON DEALLOCATED!"
     STOP
  ENDIF
END PROGRAM ex_9_3
!
SUBROUTINE STATS(VECTOR,N,MEAN,STD_DEV,MEDIAN)
  IMPLICIT NONE
  ! Defincion de variables
  INTEGER , INTENT(IN)                    ::  N
  REAL      , INTENT(IN) , DIMENSION(:)    ::  VECTOR    !! (1)
  REAL      , INTENT(OUT)                  ::  MEAN
  REAL      , INTENT(OUT)                  ::  STD_DEV
  REAL      , INTENT(OUT)                  ::  MEDIAN
  REAL      , DIMENSION(1:N)              ::  Y
  REAL :: VARIANCE = 0.0
  REAL      :: SUMXI = 0.0, SUMXI2 = 0.0
  !
  SUMXI=SUM(VECTOR)       !! (6)
  SUMXI2=SUM(VECTOR*VECTOR)    !! (6)
  MEAN=SUMXI/N       
  VARIANCE=(SUMXI2-SUMXI*SUMXI/N)/(N-1)
  STD_DEV = SQRT(VARIANCE)
  Y=VECTOR
  ! Ordena valores por proceso de seleccion
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
