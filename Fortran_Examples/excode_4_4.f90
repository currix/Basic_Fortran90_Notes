PROGRAM ex_4_4
  IMPLICIT NONE
  REAL , DIMENSION(-180:180) :: Time=0
  INTEGER :: Degree, Strip
  REAL :: Value
  CHARACTER (LEN=1), DIMENSION(-180:180) :: LEW=' '
!
  DO Degree=-165,165,15
     Value=Degree/15
     DO Strip=-7,7
        Time(Degree+Strip)=Value
     ENDDO
  ENDDO
!
  DO Strip=0,7
     Time(-180 + Strip) = -180/15
     Time( 180 - Strip) = 180/15
  ENDDO
!
  DO Degree=-180,180
     PRINT *,Degree,' ',Time(Degree), 12 + Time(Degree)
  END DO
!
  WHERE (Time > 0) 
     LEW='E'
  ELSEWHERE (Time < 0)
     LEW='W'
  ENDWHERE
!
  PRINT*, LEW
!
END PROGRAM ex_4_4
