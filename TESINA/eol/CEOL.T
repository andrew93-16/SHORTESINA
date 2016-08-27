CONTINUOUS SYSTEM CEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016

" Inputs and outputs:
INPUT w ud 
OUTPUT y1 
" States, derivates and time:
STATE x1 
DER dx1 
TIME t

" Initializations:
" Equations:
u=FC*uc+(1-FC)*ud

uc=(42-x1)*(kcp+kci*delta)

dx1=a*x1+b*u+e*w

y1=x1

" Parameter values:

a=-0.1205
b=2.882
e=0.0658
FC=0
kcp=1
kci=1
delta=0.01




END