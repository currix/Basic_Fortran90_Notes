PROGRAM ex_6_5
  ! Program to compute the Body Mass Index (Quetelet Index) according to the formula:
  !    BMI = (weight (kg))/(height^2 (m^2)) 
  !
  IMPLICIT NONE
  CHARACTER (LEN=25) :: Name
  INTEGER :: height_cm = 0, weight_kg = 0 ! height in cm and weight in kg
  REAL     :: height_m = 0.0 ! height in m units
  REAL     :: BMI ! Body Mass Index
  !
  PRINT*,  'Full Name:'; READ*, Name
  !
  PRINT*, 'Weight (kg)?:'; READ*, weight_kg
  !
  PRINT*, 'Height (cm)?:'; READ*, height_cm
  !
  height_m = height_cm/100.0
  BMI = weight_kg/(height_m**2)
  !
  PRINT 100, Name, BMI, BMI 
100  FORMAT(1X,A ' BMI  is ', F10.4,' or ', E10.4)
!
END PROGRAM ex_6_5
