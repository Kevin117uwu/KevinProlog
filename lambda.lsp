; -------  LAMBDA ---------

; 1. AREA DEL TRIANGULO

;lambda
(lambda (a b)(/(* a b) 2 ))
(defvar *areatriangulo* (lambda (a b)(/(* a b) 2 )))

; 2. AREA Y VOLUMEN DEL CUBO

(defvar *Acubo* (lambda (x) (* 6(* x x))))
(defvar *Vcubo* (lambda (x) (* x x x)))

(defun AVCubo()
    (princ "Area y volumen del cubo")
    (terpri)
    (princ "Dame el tamaño de un lado: ")
    (setq x(read))
    (if(and (/= x 0) (> x 0))
    (progn
        (princ "El area del cubo es: ")
        (write (funcall *Acubo* x))
        (terpri)
        (terpri)
        (princ "El volumen del cubo es: ")
       (write (funcall *Vcubo* x))
        (terpri)
    ) ) )

; 3. AREA Y VOLUMEN DE LA PIRAMIDE HEXAGONAL

(defvar *ABPH* (lambda (longbase) (* (/ (* 3 (sqrt 3)) 2) (* longbase longbase))))
(defvar *ALPH* (lambda (longbase altura) (* (/ (* 3 (sqrt 3)) 2) longbase altura)))
(defvar *ATPH* (lambda (longbase altura) (+ (funcall *ABPH* longbase) (* 6 (funcall *ALPH* longbase altura)))))
(defvar *VPH* (lambda (longbase altura) (/ (* (funcall *ABPH* longbase) altura))))

(defun AVPirHex()
    (princ "Area y Volumen de la piramide hexagonal")
    (terpri)
    (princ "Dame la longitud de un lado de la base: ")
    (setq longbase(read))
    (terpri)
    (princ "Dame el altura: ")
    (setq altura(read))
    (terpri)
    (if(and (> longbase 0) (> altura 0))
        (progn
            (princ "El area es: ")
            (write (funcall *ATPH* longbase altura))
            (terpri)
            (princ "El volumen es: ")
            (write (funcall *VPH* longbase altura))
        ) ) )


; 4. AREA Y VOLUMEN DEL PRISMA

(defvar *Aprisma* (lambda (x y z) (* 2 (+ (* x y) (* x z) (* y )))))
(defvar *Vprisma* (lambda (x y z) (* x y z)))

(defun AVPrisma()
    (princ "Area y volumen del prisma")
    (terpri)
    (princ "Dame la altura: ")
    (setq z(read))
    (princ "Dame el largo: ")
    (setq x(read))
    (princ "Dame el ancho: ")
    (setq y(read))
    
    
    (terpri)
    (if(and (/= x 0) (/= y 0) (> x 0) (> y 0) (/= z 0) (> z 0))
    (progn
        (princ "El area del prisama es: ")
        (write (funcall *AprismaR* x y z))
        (terpri)
        (princ "El volumen del prisma es: ")
        (write (funcall *VprismaR* x y z))
        (terpri)
    ) ) )

    ; 5. AREA Y VOLUMEN DEL CIRCULO

(defvar *Acirculo* (lambda (a b) (* 2 pi a b)))
(defvar *Vcirculo* (lambda (a b) (* pi(* a a ) b)))

(defun AVCirculo()
    (princ "Area y volumen del circulo")
    (terpri)
    (princ "Dame el radio: ")
    (setq a(read))
    (princ "Dame la altura: ")
    (setq b(read))
    (terpri)
    (if(and (> a 0) (> b 0))
    (progn
        (princ "El area del circulo es: ")
        (write (funcall *Acirculo* a b))
        (terpri)
        (princ "El volumen del circulo es: ")
        (write (funcall *Vcirculo* a b))
        (terpri)
    ) ) )

; 6. AREA Y VOLUMEN DE LA PIRAMIDE

(defvar *ABPE* (lambda (longB) (/ (* (sqrt 3) longB longB) 4)))
(defvar *PBPE* (lambda (longB) (* 3 longB)))
(defvar *ASPE* (lambda (longB a) (+ (funcall *ABPE* longB) (* 0.5 (funcall *PBPE* longB) a) )))
(defvar *VP* (lambda (longB a) (/ (* (funcall *ABPE* longB)) 3)))

(defun AVPiramide()
    (princ "Area y volumen de la piramide")
    (terpri)    
    (princ "Dame la base: ")
    (setq longB(read))
    (terpri)
    (princ "Dame la altura: ")
    (setq a(read))
    (terpri)
    (if(and (> longB 0) (> a))
    (progn
        (princ "El area de la superficie de la piramide es: ")
        (write (funcall *ASPE* longB a))
        (terpri)

        (princ "El volumen de la piramide es: ")
        (write (funcall *VP* longB a))
        (terpri)
    ) ) )

; 7. AREA Y VOLUMEN DEL CONO

(defvar *GMatriz* (lambda (raco alton) (sqrt (+ (* raco raco) (* altcon altcon)))))
(defvar *ACono* (lambda ( pi raco altcon) (* pi raco (+ raco (funcall *GMatriz* raco altcon)))))
(defvar *VCono* (lambda (pi raco altcon) (/ (* pi (* raco raco) altcon) 3)))

(defun AVCono()
    (princ "Area y volumen del cono")
    (terpri)    
    (princ "Dame el radio: ")
    (setq raco(read))
    (terpri)
    (princ "Dame la altura: ")
    (setq altcon(read))
    (terpri)

    (if (and (> raco 0) (> altcon 0))
        (progn
            (princ "El area del cono es: ")
            (write (funcall *ACono* pi raco altcon ))
            (terpri)
            (princ "El volumen del cono es: ")
            (write (funcall *VCono* pi raco altcon))
            (terpri)
        ) ) )


; 8. AREA Y VOLUMEN DEL PRISMA TRIANGULAR

(defvar *APT* (lambda (perB altPT) (* perB altPT)))
(defvar *ABPT* (lambda (altB perB) (* 2 (/ (* altB perB) 2))))
(defvar *ATPT* (lambda (altB perB) (+ (funcall *APT* perb altPT) (* (funcall *ABPT* perB altB) 2))))
(defvar *VPT* (lambda (altPT) (* (funcall *ABPT* altB perB) altPT)))

(defun AVPrismaTr()
    (princ "Area y Volumen deL prisma triangular")
    (terpri)
    (princ "dame el perimetro de la base: ")
    (setq perB(read))
    (terpri)
    (princ "Dame la altura de la base: ")
    (setq altB(read))
    (terpri)
    (princ "Dame la altura del Prisma Triangular: ")
    (setq altPT(read))
    (terpri)
    (if(and (> perB 0) (> altB 0) (> altPT 0))
        (progn
            (princ "El area es: ")
            (write (funcall *ATPT* altB perB))
            (terpri)
            (princ "El volumen es: ")
            (write (funcall *VPT* altPT))
            (terpri)
        ) ) )



; 9. AREA Y VOLUMEN DE LA ESFERA
;funciones lambda
(defvar *AEsfera* (lambda (pi radio) (* 4 pi (* radio radio))))
(defvar *VEsfera* (lambda (pi radio) (* (/ 4 3) pi (* radio radio radio))))

(defun AVEsfera()
    (princ "Area y volumen de la esfera")
    (terpri) 
    (princ "Dame el radio: ")
    (setq radio(read))
    (terpri)
    (if (> radio 0)
        (progn
            (princ "El area es: ")
            (write (funcall *AEsfera* pi radio))
            (terpri)
            (princ "El volumen es: ")
            (write (funcall *VEsfera* pi raco))
            (terpri)
) ) )


; 10. AREA Y VOLUMEN DEL PRISMA HEXAGONAL
(defun VAPrHEx()
    (princ "Area y volumen del prisma hexagonal")
    (terpri)
    (princ "dame la longitud de uno de los lados de la base: ")
    (setq Lbhex(read))
    (terpri)
    (princ "Dame la altura del prisma: ")
    (setq altPHex(read))
    (terpri)

    (if (and (> Lbhex 0) (> altPHex 0))
        (progn
            (setq AreaBaseHex(* (* Lbhex Lbhex) (/ (* 3 (sqrt 3)) 2)))
            (setq AreaTHex(* 6 AreaBaseHex))
            (princ "El area del prisma hexagonal: ")
            (write AreaTHex)
            (terpri)
            (princ "El volumen del prisma hexagonal es: ")
            (setq VolHex(* AreaBaseHex altPHex))
            (write VolHex)
            (terpri)
        )
    )

)


