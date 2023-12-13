# Recorrido de una Lista en Lisp

## Código Original

; (defun recorre (lista)
(princ (car lista))
(recorre (cdr lista))
)
(if (= recorre 5)
break
)
(recorre '(1 2 3 4 5))

-------- CORREGIDO ---------


## Código Corrregido

(defun recorre(lista)
    (if (null lista)
        (progn
            (princ "fin xd")
        )
    )
    (progn
        (princ (car lista))
        (recorre (cdr lista))
    )
)
