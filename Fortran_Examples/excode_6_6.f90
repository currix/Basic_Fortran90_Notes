PROGRAM ex_6_6
!
  IMPLICIT NONE
  INTEGER , PARAMETER :: N=1000000
  INTEGER , DIMENSION(1:N) :: X
  REAL    , DIMENSION(1:N) :: Y
  INTEGER :: I
  REAL :: T
  REAL    , DIMENSION(1:5) :: TP
  CHARACTER*10 :: COMMENT
!
  OPEN(UNIT=10,FILE='/tmp/ex_6_6.txt')
!
  CALL CPU_TIME(T)
!
  TP(1)=T
  COMMENT=' Initial Time : '
  PRINT 100, COMMENT, TP(1)
  !
  DO I=1,N
     X(I)=I
  END DO
  !
  CALL CPU_TIME(T)
  !
  TP(2)=T-TP(1)
  COMMENT = ' Integer vector. Time :  '
  PRINT 100,COMMENT,TP(2)
  !
  Y=REAL(X)
  !
  CALL CPU_TIME(T)
  !
  TP(3)=T-TP(1)-TP(2)
  COMMENT = ' Real vector. Time :  '
  !
  PRINT 100,COMMENT,TP(3)
  !
  DO I=1,N
     WRITE(10,200) X(I)
200  FORMAT(1X,I10)
  END DO
  !
  CALL CPU_TIME(T)
  TP(4)=T-TP(1)-TP(2)-TP(3)
  !
  COMMENT = ' Write Integer vector. Time :  '
  PRINT 100,COMMENT,TP(4)
  !
  DO I=1,N
     WRITE(10,300) Y(I)
300  FORMAT(1X,f10.0)
  END DO
  !
  CALL CPU_TIME(T)
  TP(5)=T-TP(1)-TP(2)-TP(3)-TP(4)
  !
  COMMENT = ' Write Real vector. Time :  '
  PRINT 100,COMMENT,TP(5)
  !
100 FORMAT(1X,A,2X,F7.3)
END PROGRAM ex_6_6
