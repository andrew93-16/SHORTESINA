CONNECTING SYSTEM CONEOL
" Version:      1.0
" Abstract:     
" Description:  
" Revision:     1.0
" Author:       andy
" Created:      15/07/2016
"CONNESSIONI EFFETTUATE TRA I SISTEMI
"---------------------------------------------------------------------------

" Time, if needed:

TIME t

"---------------------------------------------------------------------------

" Connections:

ud1[DEOL]=42 "riferimento utilizzato per il sistema controreazionato

ud2[DEOL]=y1[CEOL] "l'uscita viene collegata all'ingresso per effettuare la 
"retroazione

ET[DEOL]=ET[CEOL] "collega l'uscita ET(trigger) del processo all'ingresso ET 
"del controllore 

ud[CEOL]=y[DEOL] "l'uscita del controllore viene reinserita nel processo , PITCH

x1k[CEOL]=x1k[DEOL] "stato del controllo comandato dal trigger

w[CEOL]=18 "disturbo del vento





END