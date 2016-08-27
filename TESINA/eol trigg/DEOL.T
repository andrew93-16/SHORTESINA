DISCRETE SYSTEM DEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016

" Inputs and outputs:
INPUT ud1 ud2 ET
OUTPUT y x1k

" States and time variables:
STATE deltak z1
NEW  deltakp z1p
TIME t
TSAMP ts

" Initializations:

" Equations:

ts=t+delta
y=e*kp
e=ud1-ud2
deltakp=deltak+ET*(t-deltak)
z1p=z1+ET*(-z1+ud2)
x1k=z1

" Parameter values:
delta=1e-3


kp=1
ki=1

END
