PROGRAM ex_3_4
  IMPLICIT NONE
  REAL , DIMENSION(-180:180) :: Time=0
  INTEGER :: Degree, Strip
  REAL :: Value
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
END PROGRAM ex_3_4
