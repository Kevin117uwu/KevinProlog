;AREA DEL TRIANGULO

(defun areatriangulo()
(princ "dame la base del triangulo: ")
(setq num1 (read))
(princ "dame la altura: ")
(setq num2 (read))
(setq resultado ( / (* num1 num2) 2 ))
; (write resultado)
)


; AREA DEL CUADRADO

(defun arearectangulo()
(princ "dame la base del rectangulo: ")
(setq num1 (read))
(princ "dame la altura: ")
(setq num2 (read))
(setq resultado (* num1 num2))
; (write resultado)
)
