# Suma de Números en Lisp
## Código Original

```lisp

(defun sumaNumero()
(princ "Dame un numero: ")
(setq num1 (read))
(princ "Dame un segundo numero: ")
(setq num2 (read))
(setq resultado (+ num1 num2))
; (write resultado)
)

 ## La función sumaNumero utiliza la función (princ ...) para imprimir mensajes en la consola, solicitando al usuario que ingrese dos números.

## Los números ingresados por el usuario se leen y almacenan en las variables num1 y num2 mediante (setq ... (read)).

## Se realiza la suma de los dos números y el resultado se almacena en la variable resultado mediante (setq resultado (+ num1 num2)).

## La línea ; (write resultado) está comentada, lo que significa que no se ejecuta. Si se desea imprimir el resultado, se puede descomentar esta línea.