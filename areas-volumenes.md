# Documentación de areas y volumenes

## Áreas

; ----- AREAS ------

### 1. Área del Triángulo
; 1. AREA DEL TRIANGULO

(defun areatriangulo()
(princ "dame la base del triangulo: ")
(setq num1 (read))
(princ "dame la altura: ")
(setq num2 (read))
(setq resultado ( / (* num1 num2) 2 ))
; (write resultado)
)


; 2. AREA DEL RECTANGULO

(defun arearectangulo()
(princ "dame la base del rectangulo: ")
(setq num1 (read))
(princ "dame la altura: ")
(setq num2 (read))
(setq resultado (* num1 num2))
; (write resultado)
)


; 3. AREA DEL CUADRADO

(defun areacuadrado()
(princ "dame el lado del cuadrado: ")
(setq num1 (read))
(setq resultado (* num1 num1))
; (write resultado)
)

; 4. AREA DEL CIRCULO

(defun areacirculo()
(princ "dame el radio del circulo: ")
(setq num1 (read))
(setq resultado (*(* num1 num1)3.1416))
; (write resultado)
)

; 5. AREA DEL CUBO

(defun areacubo()
(princ "dame el lado del cubo: ")
(setq num1 (read))
(setq resultado (*(* num1 num1) 6))
;(write "cm2")
)

; 6. AREA DEL PRISMA

(defun areaprisma()
(princ "dame el largo del prisma: ")

(setq num1 (read))

(princ "dame el ancho del prisma: ")

(setq num2 (read))

(princ "dame la altura del prisma: ")

(setq num3 (read))

(setq a1 (*(* num1 num2)2))

(setq a2 (*(* num1 num3)2))

(setq a3 (*(* num2 num3)2))

(setq resultado (+ a1 a2 a3))

)

; 7. AREA DEL CILINDRO

(defun areacilindro()

(princ "dame el radio del cilindro: ")
(setq num1 (read))
(princ "dame la altura del cilindro: ")
(setq num2 (read))
(setq resultado (*(*(*(+ num1 num2)num1)3.1416)2))
; (write resultado)
)

; 8. AREA DE UN CONO

(defun areacono()

(princ "dame el radio del cono: ")
(setq num1 (read))
(princ "dame la generatriz del cono: ")
(setq num2 (read))
(setq resultado (*(*(+ num1 num2)num1)3.1416))
; (write resultado)
)

; 9. AREA DE UNA ESFERA

(defun areaesfera()

(princ "dame el radio de la esfera: ")
(setq num1 (read))
(setq resultado (*(*(* num1 num1)4)3.1416))
; (write resultado)
)

; 10. AREA DEL TRAPECIO

(defun areatrapecio()
(princ "dame la base mayor del trapecio: ")
(setq num1 (read))
(princ "dame ahora su base menor: ")
(setq num2 (read))
(princ "dame ahora su altura: ")
(setq num3 (read))
(setq resultado ( /(* (+ num1 num2) num3)2))
; (write resultado)
)





; --------- VOLUMENES -------

; 1 . VOLUMEN CUBO
(defun volumencubo()
(princ "dame el lado del cubo: ")
(setq num1 (read))
(setq resultado (*(* num1 num1) num1))

)

; 2. VOLUMEN CILINDRO
(defun volumencilindro()
(princ "dame el radio del cilindro: ")
(setq num1 (read))
(princ "dame la altura del cilindro: ")
(setq num2 (read))
(setq resultado (*(*(* num1 num1)3.1416)num2))
)

; 3. VOLUMEN DEL CONO
(defun volumencono()

(princ "dame el radio del cono: ")
(setq num1 (read))
(princ "dame la altura del cono: ")
(setq num2 (read))
(setq resultado (/(*(*(* num1 num1)3.1416)num2)3))
; (write resultado)
)


; 4. VOLUMEN DE UNA ESFERA
(defun volumenesfera()

(princ "dame el radio de la esfera: ")
(setq num1 (read))

(setq resultado (/(*(*(* num1 num1 num1)3.1416)4)3))
; (write resultado)
)


; 5. VOLUMEN DE UN PRISMA
(defun volumenprisma()

(princ "dame el ancho del prisma: ")
(setq num1 (read))
(princ "dame la base del prisma: ")
(setq num2 (read))
(princ "dame la altura del prisma: ")
(setq num3 (read))

(setq resultado (*(* num1 num2)num3))
; (write resultado)
)

; 6. VOLUMEN DE UN ORTOEDRO
(defun volumenortoedro()

(princ "dame la longitud del ortoedro: ")
(setq num1 (read))
(princ "dame la latitud del ortoedro: ")
(setq num2 (read))
(princ "dame la altura del ortoedro: ")
(setq num3 (read))

(setq resultado (*(* num1 num2)num3))
; (write resultado)
)

; 7. VOLUMEN DE UN 