PROGRAM ex_2_6
  ! From Program ch0806 of Chivers & Sleightholme
  !
  ! Examples of the use of the kind
  ! function and the numeric inquiry functions
  !
  ! Integer arithmetic
  !
  ! 32 bits is a common word size,
  ! and this leads quite cleanly
  ! to the following
  ! 8 bit integers
  ! -128 to 127 10**2
  ! 16 bit integers
  ! -32768 to 32767 10**4
  ! 32 bit integers
  ! -2147483648 to 2147483647 10**9
  !
  ! 64 bit integers are increasingly available.
  ! This leads to
  ! -9223372036854775808 to
  !  9223372036854775807 10**19
  !
  ! You may need to comment out some of the following
  ! depending on the hardware platform and compiler
  ! that you use.
  INTEGER                         :: I
  INTEGER ( SELECTED_INT_KIND( 2)) :: I1
  INTEGER ( SELECTED_INT_KIND( 4)) :: I2
  INTEGER ( SELECTED_INT_KIND( 8)) :: I3
  INTEGER ( SELECTED_INT_KIND(16)) :: I4
  ! Real arithmetic
  !
  ! 32 and 64 bit reals are normally available.
  !
  ! 32 bit reals 8 bit exponent, 24 bit mantissa
  !
  ! 64 bit reals 11 bit exponent 53 bit mantissa
  !
  REAL :: R = 1.0
  REAL ( SELECTED_REAL_KIND( 6, 37)) :: R1 = 1.0
  REAL ( SELECTED_REAL_KIND(15,307)) :: R2 = 1.0 
  REAL ( SELECTED_REAL_KIND(18,310)) :: R3 = 1.0
  PRINT *,' '
  PRINT *,' Integer values'
  PRINT *,'         Kind       Huge'
  PRINT *,' '
  PRINT *,KIND(I ),' ',HUGE(I    )
  PRINT *,' '
  PRINT *,KIND(I1 ),' ',HUGE(I1  )
  PRINT *,KIND(I2 ),' ',HUGE(I2  )
  PRINT *,KIND(I3 ),' ',HUGE(I3  )
  PRINT *,KIND(I4 ),' ',HUGE(I4  )
  PRINT *,' '
  PRINT *,' ----------------------------------- '
  PRINT *,' '
  PRINT *,' Real values'
  !
  PRINT *,'         Kind     ', KIND(R ), '    Digits     ', DIGITS(R )
  PRINT *,'  Huge    = ',HUGE(R ), ' Tiny =', TINY(R)
  PRINT *,'  Epsilon = ',EPSILON(R),' Precision = ', PRECISION(R)
  PRINT *,'  Exponent = ',EXPONENT(R), 'MAXExponent = ', MAXEXPONENT(R), '  MINExponent = ',MINEXPONENT(R)
  PRINT *,'  Radix    = ', RADIX(R ), ' Range =', RANGE(R)
  PRINT *,' ' 
  !
  !
  PRINT *,'         Kind     ', KIND(R1 ), '    Digits     ', DIGITS(R1 )
  PRINT *,'  Huge    = ',HUGE(R1 ), ' Tiny =', TINY(R1)
  PRINT *,'  Epsilon = ',EPSILON(R1),' Precision = ', PRECISION(R1)
  PRINT *,'  Exponent = ',EXPONENT(R1), 'MAXExponent = ', MAXEXPONENT(R1), '  MINExponent = ',MINEXPONENT(R1)
  PRINT *,'  Radix    = ', RADIX(R1 ), ' Range =', RANGE(R1)
  PRINT *,' ' 
  !
  !
  PRINT *,'         Kind     ', KIND(R2 ), '    Digits     ', DIGITS(R2 )
  PRINT *,'  Huge    = ',HUGE(R2 ), ' Tiny =', TINY(R2)
  PRINT *,'  Epsilon = ',EPSILON(R2),' Precision = ', PRECISION(R2)
  PRINT *,'  Exponent = ',EXPONENT(R2), 'MAXExponent = ', MAXEXPONENT(R2), '  MINExponent = ',MINEXPONENT(R2)
  PRINT *,'  Radix    = ', RADIX(R2 ), ' Range =', RANGE(R2)
  PRINT *,' ' 
  !
  !
  PRINT *,'         Kind     ', KIND(R3 ), '    Digits     ', DIGITS(R3 )
  PRINT *,'  Huge    = ',HUGE(R3 ), ' Tiny =', TINY(R3)
  PRINT *,'  Epsilon = ',EPSILON(R3),' Precision = ', PRECISION(R3)
  PRINT *,'  Exponent = ',EXPONENT(R3), 'MAXExponent = ', MAXEXPONENT(R3), '  MINExponent = ',MINEXPONENT(R3)
  PRINT *,'  Radix    = ', RADIX(R3 ), ' Range =', RANGE(R3)
  PRINT *,' ' 
  !
END PROGRAM ex_2_6
