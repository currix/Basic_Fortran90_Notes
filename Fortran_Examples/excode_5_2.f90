PROGRAM ex_5_2
  !
  IMPLICIT NONE
  !
  REAL :: Grade
  INTEGER :: Index, Integer_Grade
  CHARACTER(LEN=2), DIMENSION(1:5) ::  List_Grades=(/'D ','C ','B ','A ','A+'/)
  ! READ Grade
  PRINT *, "Student Grade (0-10)?"
  READ *, Grade
  !
  Integer_Grade = NINT(Grade)
  !
  SELECT CASE (Integer_Grade)
  CASE (0:4) 
     Index = 1
  CASE (5,6) 
     Index = 2
  CASE (7,8) 
     Index = 3
  CASE (9) 
     Index = 4   
  CASE (10) 
     Index = 5
  CASE DEFAULT 
     Index = 0
  END SELECT
  !
  IF (Index==0) THEN
     PRINT *, "The input grade : ", Grade," is out of bounds. Only  [0,10]."
  ELSE
     PRINT 100, Grade, List_Grades(Index)
  ENDIF
  !
100 FORMAT(1X,'The student grade is ',F4.1,' (',A3,')')
  !
END PROGRAM EX_5_2
