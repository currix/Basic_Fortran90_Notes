PROGRAM ATTEND_CONTROL
  IMPLICIT NONE
  INTEGER , PARAMETER :: N_students = 3
  INTEGER , PARAMETER :: N_courses = 3
  INTEGER , PARAMETER :: N_lab = 3
  INTEGER :: student, course, lab
  CHARACTER*2 , DIMENSION(1:N_lab,1:N_courses,1:N_students) :: attend = 'NO'
  DO student = 1, N_students
     DO course = 1,N_courses
        READ *,(attend(lab,course,student),lab = 1, N_lab)
     ENDDO
  ENDDO
  PRINT *,' Lab attendance : '
  DO student=1, N_students
     PRINT *,' Student = ', student
     DO course = 1,N_courses
        PRINT *,'   Course = ', course, ' : ', (attend(lab,course,student),lab=1,N_lab)
     ENDDO
  ENDDO
END PROGRAM ATTEND_CONTROL
