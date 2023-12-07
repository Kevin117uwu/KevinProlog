(defun calcular-precio ()
  (format t "Ingrese el número de pantalones a comprar: ")
  (setq cantidad (read))
  (cond
    ((< cantidad 5) (setq precio (* cantidad precio-normal)))
    ((and (>= cantidad 5) (< cantidad 12)) (setq precio (* cantidad (* precio-normal 0.85))))
    ((>= cantidad 12) (setq precio (* cantidad (* precio-normal 0.7))))
    )
  (format t "Total a pagar: ~a" precio)
  )

(setq precio-normal 100) ; Precio normal de un pantalón
(calcular-precio)


; ---------  2  --------------

(defun calcular-puntos (historia salario propiedad)
  (setq puntos 0)
  (cond
    ((char= historia 'b)
     (cond
       ((>= salario (* prestamo 0.5)) (setq puntos (+ puntos 5)))
       ((and (>= salario (* prestamo 0.25)) (< salario (* prestamo 0.5))) (setq puntos (+ puntos 3)))
       ((and (>= salario (* prestamo 0.1)) (< salario (* prestamo 0.25))) (setq puntos (+ puntos 1)))
       )
     (cond
       ((>= propiedad (* prestamo 2)) (setq puntos (+ puntos 5)))
       ((and (>= propiedad prestamo) (< propiedad (* prestamo 2))) (setq puntos (+ puntos 3)))
       )
     )
    )
  puntos
  )

(format t "Nombre del solicitante: ")
(setq nombre (read-line))
(format t "Historia crediticia (b = buena, m = mala): ")
(setq historia (read-char))
(format t "Cantidad pedida: ")
(setq prestamo (read))
(format t "Salario anual: ")
(setq salario (read))
(format t "Valor de otras propiedades: ")
(setq propiedad (read))

(setq puntos-obtenidos (calcular-puntos historia salario propiedad))

(if (and (char= historia 'b) (>= puntos-obtenidos 6))
    (format t "¡El solicitante ~a califica para el préstamo!" nombre)
    (format t "El solicitante ~a no califica para el préstamo." nombre))

; ------------- 3  ------------


(format t "Ingrese una letra minúscula: ")
(setq letra (read-char))

(cond
  ((member letra '(#\a #\e #\i #\o #\u)) (format t "La letra ~a es una vocal." letra))
  ((char= letra #\y) (format t "La letra ~a es una semivocal." letra))
  (t (format t "La letra ~a es una consonante." letra))
  )


  ; ------------ 4 -------------

  (format t "Ingrese un año: ")
(setq año (read))

(cond
  (and (zerop (mod año 4)) (not (zerop (mod año 100)))) (format t "El año ~a es bisiesto." año))
  ((zerop (mod año 400)) (format t "El año ~a es bisiesto." año))
  (t (format t "El año ~a no es bisiesto." año))
  
  
   ; ---------- 5 -------------


 (format t "Ingrese el número de mes (1 al 12): ")
(setq mes (read))

(cond
  ((= mes 2) (format t "El mes 2 tiene 28 días."))
  ((member mes '(4 6 9 11)) (format t "El mes ~a tiene 30 días." mes))
  ((member mes '(1 3 5 7 8 10 12)) (format t "El mes ~a tiene 31 días." mes))
  (t (format t "MES ERRONEO"))
  )