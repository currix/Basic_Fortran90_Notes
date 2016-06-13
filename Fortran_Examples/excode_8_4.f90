PROGRAM ex_8_4
  IMPLICIT NONE
  ! Internal function example:
  ! E(v) = we (v+1/2) - wexe (v+1/2)**2.
  INTEGER :: V, VMAX
  REAL :: we, wexe, Energy
  PRINT *,' Vmax?:'
  READ *, VMAX
  PRINT *,' we and wexe?'
  READ *,we, wexe
  DO V = 0, VMAX
     Energy = FEN(V)
     PRINT 100, V, Energy
  ENDDO
100 FORMAT(1X,'E(',I3,') = ',F14.6)
CONTAINS 
!
  REAL FUNCTION FEN(V)
    IMPLICIT NONE
    INTEGER , INTENT(IN) :: V
    FEN = we*(V+0.5)-wexe*(V+0.5)**2
  END FUNCTION FEN
!
END PROGRAM EX_8_4
