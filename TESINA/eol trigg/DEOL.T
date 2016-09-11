DISCRETE SYSTEM DEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016
"CONTROLLO DISCRETO CON EVENT TRIGGERING DEL SISTEMA 
"----------------------------------------------------------------------------

" Inputs and outputs:

INPUT ud1 ud2 ET

"ud1 variabile del riferimento
"ud2 uscita del sistema (velocita di rotazione del rotore)
"ET trigger

"----------------------------------------------------------------------------

OUTPUT y x1k

"y uscita del controllore
"x1k stato dipendente dal trigger

"-------------------------------------------------------------------------

" States and time variables:

STATE deltak z1 I

NEW  deltakp z1p dI
TIME t
TSAMP ts

"---------------------------------------------------------------------------

" Initializations:

" Equations:

er=x1k-42
ts=t+delta
y=er*kp+ki*I
deltakp=deltak+ET*(t-deltak)
z1p=z1+ET*(-z1+ud2)
x1k=z1
dI=er

"e errore tra lo stato dipendente dal trigger e riferimento
"z1 e zp stato e derivato dipendenti dal trigger
"x1k variabile di riferiemnto per eseguire operazione di controllo 
"e uscita dello stato del trigger

"--------------------------------------------------------------------

" Parameter values:


kp= 0.652  "guadagno proporzionale
ki= 0.347  "guadagno integrativo
delta=1e-3 "tempo di campionamento

END
