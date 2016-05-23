PROGRAM ex_2_1
  IMPLICIT NONE
  !
  ! Program computing the energy of a vibrational normal mode
  ! 
  !  Ge(v) = we (v+1/2) - wexe (v+1/2)^2
  ! 
  !
  ! Definition of variables
  REAL            :: energ_0, energ, delta_e ! deltae = energ-energ0
  REAL            :: we = 250.0, wexe = 0.25 ! Units: cm-1
  INTEGER         :: v = 0
  CHARACTER(LEN=60)    :: for_mol
  ! I/O
  PRINT *,'Molecule Formula : '
  READ *, for_mol
  PRINT *,'Num. de quanta de excitacion : '
  READ *, v
  ! Calculations
  energ = we*(v+0.5) - wexe*(v+0.5)**2
  energ_0 = we*(0.5) - wexe*(0.5)**2
  delta_e = energ - energ_0
  ! I/O
  PRINT *
  PRINT *,'Molecule: ', for_mol
  PRINT *,'number of quanta: ', v
  PRINT *,'energy = ',energ,'cm-1'
  PRINT *,'g.s. energy = ',energ_0,'cm-1'
  PRINT *,'excitation energy = ',delta_e,'cm-1'
END PROGRAM ex_2_1
