PROGRAM excode_5_4
  !
  IMPLICIT NONE
  !
  REAL :: X_val = 0.0 
  REAL :: X_app = 0.0, X_sum = 0.0
  INTEGER :: I_flag = 1, I_count = 0
  !
  ! Taylor Series:  SIN(X) = X - X^3/3! + X^5/5! - X^7/7! + ... 
  WRITE(*,*) "Introduce the angle X (RAD) :"
  READ(*,*) X_val
  !
  I_count = 1
  X_app = X_val
  X_sum = X_val
  !
  PRINT*, '         Order     Approx.    SIN(X)       Approx. - SIN(X)'
  !
  DO WHILE (I_flag == 1) 
     !
     PRINT*, I_count, X_app, SIN(X_val), X_app - SIN(X_val)
     !
     X_sum = X_sum*(-1)*X_val*X_val/((I_count*2+1)*(I_count*2))
     X_app = X_app + X_sum
     !
     I_count = I_count + 1
     !
     WRITE(*,*) "STOP? (0 yes, 1 no)"
     READ(*,*) I_flag
     IF (I_flag /= 1 .AND. I_flag /= 0) I_flag = 1
     !
  ENDDO
  !
END PROGRAM excode_5_4
