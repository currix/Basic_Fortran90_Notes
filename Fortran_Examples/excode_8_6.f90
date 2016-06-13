PROGRAM ex_8_6
  !
  ! Program to evaluate a 1D potential function on grid points
  !
  IMPLICIT NONE
  !
  REAL, DIMENSION(:), ALLOCATABLE :: X_grid, Pot_grid
  !
  REAL :: X_min, X_max, Delta_X
  REAL :: V_0 = 10.0, a_val = 1.0
  INTEGER :: Index, X_dim
  INTEGER :: Ierr
  !
  !
  INTERFACE Potf
     ELEMENTAL FUNCTION Potf(Depth, Inv_length, X)
       !
       IMPLICIT NONE
       !
       REAL, INTENT(IN) :: Depth, Inv_length, X
       REAL :: Potf
       !
     END FUNCTION Potf
  END INTERFACE Potf
  !
  !
  READ(*,*), X_min, X_max, X_dim ! input minimum and maximum values of X and number of points
  !
  ALLOCATE(X_grid(1:X_dim), STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'X_grid allocation failed'
  ENDIF
  !
  ALLOCATE(Pot_grid(1:X_dim), STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'Pot_grid allocation failed'
  ENDIF
  !
  !
  Delta_X = (X_max - X_min)/REAL(X_dim - 1)
  !
  X_grid = (/ (Index, Index = 0 , X_dim - 1 ) /)
  X_grid = X_min + Delta_X*X_grid
  !
  Pot_grid = Potf(V_0, a_val, X_grid)
  !
  DO Index = 1, X_dim
     PRINT*, X_grid, Pot_grid
  ENDDO
  !
  DEALLOCATE(X_grid, STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'X_grid deallocation failed'
  ENDIF
  !
  DEALLOCATE(Pot_grid, STAT = Ierr)
  IF (Ierr /= 0) THEN
     STOP 'Pot_grid deallocation failed'
  ENDIF
  !
  !
END PROGRAM ex_8_6
!
ELEMENTAL FUNCTION Potf(Depth, Inv_length, X)
  !
  IMPLICIT NONE
  !
  REAL, INTENT(IN) :: Depth, Inv_length, X
  !
  REAL :: Potf
  !
  Potf = -Depth/(COSH(Inv_length*X)**2)
  !
END FUNCTION Potf
