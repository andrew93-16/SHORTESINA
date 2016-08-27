CONTINUOUS SYSTEM CEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016

" Inputs and outputs:
INPUT w ud x1k 
OUTPUT y1 ET
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

e1=x1-x1k
ne=sqrt(sqr(e1))
nx=sqrt(sqr(x1))
rhomax=2*theta/sqrt(82)
nr=rhomax*nx
ET=If ne<nr Then 0 Else 1
" Parameter values:
a=-0.1205
b=2.882
e=0.0658
FC=0
theta=0.9
kcp=10
kci=10
delta=1e-3




END