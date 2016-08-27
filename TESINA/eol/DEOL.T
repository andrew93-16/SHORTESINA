DISCRETE SYSTEM DEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016

" Inputs and outputs:
INPUT ud1 ud2 
OUTPUT y 

" States and time variables:
TIME t
TSAMP ts

" Initializations:

" Equations:

ts=t+delta
y=e*kp "+e*ki*delta
e=ud1-ud2


" Parameter values:
delta=0.1


kp=1
ki=1


END