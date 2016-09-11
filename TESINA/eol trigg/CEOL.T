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

"--------------------------------------------------------------------------

" States, derivates and time:

STATE x1 I 
DER dx1 dI
TIME t

"--------------------------------------------------------------------------

" Initializations:

" Equations:

"Gli autovalori sono stati assegnati entrambi in -1

u=FC*uc+(1-FC)*ud "Switch implementato per il controllo continuo

xr=42
er=x1-xr

dI=er
"dI=y1

uc=kcp*er+ki*I
"uc=-42+kcp*y1+ki*I "ingresso nel caso continuo , il controllo viene 
"direttamente all'interno del file CEOL

"dx1=a*er+a*xr+b*u+e*w "derivata dello spazio di stato
dx1=a*x1+b*u+e*w

y1=x1 "uscita in riferimento ad un valore C=1

e1=x1-x1k "errore tra lo stato e lo stato dipendente dal trigger

ne=sqrt(sqr(e1)) "modulo dell'errore

nx=sqrt(sqr(x1)) "modulo dello stato

rhomax=2*theta*0.5/20.1443
"rhomax=2*theta/sqrt(82) "indice relativo al trigger

nr=rhomax*nx 

ET=If ne<nr Then 0 Else 1

"-------------------------------------------------------------------------

" Parameter values:

a:-0.1205
b:-2.882
e:0.0658
FC:1
theta: 0.9
kcp:0.652
ki:0.347




END