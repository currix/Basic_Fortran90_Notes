PROGRAM ex_5_1
  !
  IMPLICIT NONE
  !
  REAL :: Grade
  CHARACTER(LEN = 2), DIMENSION(1:5) :: List_Grades=(/'D ','C ','B ','A ','A+'/)
  INTEGER :: IN
  ! READ NOTE
  PRINT *, "Student mark??"
  READ *, Grade
  !
  IF (Grade>=0.0.AND.Grade<5.0) THEN 
     IN=1
  ELSE IF (Grade>=5.0.AND.Grade<7.0) THEN 
     IN=2
  ELSE IF (Grade>=7.0.AND.Grade<9.0) THEN 
     IN=3
  ELSE IF (Grade>=9.0.AND.Grade<10.0) THEN 
     IN=4
  ELSE IF (Grade==10.0) THEN 
     IN=5
  ELSE
     IN=0
  ENDIF
!
  IF (IN==0) THEN
     PRINT *, "The input : ", Grade," has a wrong value. Only [0,10]"
  ELSE
     PRINT *,  "The student grade is ", LISTNT(IN)
  ENDIF
!
END PROGRAM EX_5_1
