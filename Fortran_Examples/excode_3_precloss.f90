PROGRAM BASE_CONVERSION
  REAL :: X10=0.1
  REAL (SELECTED_REAL_KIND(6,37)) ::  X11=0.10
  REAL (SELECTED_REAL_KIND(15,307)) ::  X12=0.10
  REAL (SELECTED_REAL_KIND(15,310)) ::  X13=0.1
!
  REAL :: X20=0.01
  REAL (SELECTED_REAL_KIND(6,37)) ::  X21=0.01
  REAL (SELECTED_REAL_KIND(15,307)) ::  X22=0.01
  REAL (SELECTED_REAL_KIND(15,310)) ::  X23=0.01
!
  REAL :: X30=0.001
  REAL (SELECTED_REAL_KIND(6,37)) ::  X31=0.001
  REAL (SELECTED_REAL_KIND(15,307)) ::  X32=0.001
  REAL (SELECTED_REAL_KIND(15,310)) ::  X33=0.001
!
  REAL :: X40=0.0001
  REAL (SELECTED_REAL_KIND(6,37)) ::  X41=0.0001
  REAL (SELECTED_REAL_KIND(15,307)) ::  X42=0.0001
  REAL (SELECTED_REAL_KIND(15,310)) ::  X43=0.0001
  PRINT *,KIND(X10),' X10 ',X10
  PRINT *,KIND(X11),' X11 ',X11
  PRINT *,KIND(X12),' X12 ',X12
  PRINT *,KIND(X13),' X13 ',X13
  PRINT *,KIND(X20),' X20 ',X20
  PRINT *,KIND(X21),' X21 ',X21
  PRINT *,KIND(X22),' X22 ',X22
  PRINT *,KIND(X23),' X23 ',X23
  PRINT *,KIND(X30),' X30 ',X30
  PRINT *,KIND(X31),' X31 ',X31
  PRINT *,KIND(X32),' X32 ',X32
  PRINT *,KIND(X33),' X33 ',X33
  PRINT *,KIND(X40),' X40 ',X40
  PRINT *,KIND(X41),' X41 ',X41
  PRINT *,KIND(X42),' X42 ',X42
  PRINT *,KIND(X43),' X43 ',X43
END PROGRAM BASE_CONVERSION
