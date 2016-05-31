PROGRAM EJEMPLO_7_1
  IMPLICIT NONE
  !Definicion de variables
  INTEGER , PARAMETER :: NROW=5
  INTEGER , PARAMETER :: NCOL=6
  REAL , DIMENSION(1:NROW,1:NCOL)   :: RESULT_EXAMS = 0.0
  REAL , DIMENSION(1:NROW)          :: MEDIA_ESTUD = 0.0
  REAL , DIMENSION(1:NCOL)          :: MEDIA_ASIGN = 0.0
  INTEGER :: R,C
  !
  ! Abrir fichero para lectura
  OPEN(UNIT=20,FILE='notas.dat',STATUS='OLD') 
  !
  DO R=1,NROW
     READ(UNIT=20,FMT=100) RESULT_EXAMS(R,1:NCOL),MEDIA_ESTUD(R) ! Lectura de notas y luego de promedio
     100 FORMAT(6(2X,F4.1),2X,F5.2) ! Se leen 6 numeros seguidos y luego un septimo 
  ENDDO
  READ (20,*) ! Saltamos una linea con esta orden
  READ (20,110) MEDIA_ASIGN(1:NCOL) ! 
110 FORMAT(6(2X,F4.1))
!
! IMPRESION DE LAS NOTAS EN LA SALIDA ESTANDAR
  DO R=1,NROW
     PRINT 200, RESULT_EXAMS(R,1:NCOL), MEDIA_ESTUD(R)
200  FORMAT(1X,6(1X,F5.1),' = ',F6.2)
  END DO
  PRINT *,'  ====  ====  ====  ====  ====  ==== '
  PRINT 210, MEDIA_ASIGN(1:NCOL)
210 FORMAT(1X,6(1X,F5.1))
END PROGRAM EJEMPLO_7_1
