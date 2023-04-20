; Declare the function f with two arguments
(declare-fun f (Int Int) Int)

; Declare the function g with one argument
(declare-fun g (Int) Int)

; Declare the constant e
(declare-const e Int)

; Declare the constant c
(declare-const c Int)

; Declare the constant d
(declare-const d Int)

; Substituting e for x, e for y, and e for z:
(assert (= (f (f e e) e) (f e (f e e))))

; Substituting e for x, e for y, and c for z:
(assert (= (f (f e e) c) (f e (f e c))))

; Substituting e for x, e for y, and d for z:
(assert (= (f (f e e) d) (f e (f e d))))

; Substituting e for x, c for y, and e for z:
(assert (= (f (f e c) e) (f e (f c e))))

; Substituting e for x, c for y, and c for z:
(assert (= (f (f e c) c) (f e (f c c))))

; Substituting e for x, c for y, and d for z:
(assert (= (f (f e c) d) (f e (f c d))))

; Substituting e for x, d for y, and e for z:
(assert (= (f (f e d) e) (f e (f d e))))

; Substituting e for x, d for y, and c for z:
(assert (= (f (f e d) c) (f e (f d c))))

; Substituting e for x, d for y, and d for z:
(assert (= (f (f e d) d) (f e (f d d))))

; Substituting c for x, e for y, and e for z:
(assert (= (f (f c e) e) (f c (f e e))))

; Substituting c for x, e for y, and c for z:
(assert (= (f (f c e) c) (f c (f e c))))

; Substituting c for x, e for y, and d for z:
(assert (= (f (f c e) d) (f c (f e d))))

; Substituting c for x, c for y, and e for z:
(assert (= (f (f c c) e) (f c (f c e))))

; Substituting c for x, c for y, and c for z:
(assert (= (f (f c c) c) (f c (f c c))))

; Substituting c for x, c for y, and d for z:
(assert (= (f (f c c) d) (f c (f c d))))

; Substituting c for x, d for y, and e for z:
(assert (= (f (f c d) e) (f c (f d e))))

; Substituting c for x, d for y, and c for z:
(assert (= (f (f c d) c) (f c (f d c))))

; Substituting c for x, d for y, and d for z:
(assert (= (f (f c d) d) (f c (f d d))))

; Substituting d for x, e for y, and e for z:
(assert (= (f (f d e) e) (f d (f e e))))

; Substituting d for x, e for y, and c for z:
(assert (= (f (f d e) c) (f d (f e c))))

; Substituting d for x, e for y, and d for z:
(assert (= (f (f d e) d) (f d (f e d))))

; Substituting d for x, c for y, and e for z:
(assert (= (f (f d c) e) (f d (f c e))))

; Substituting d for x, c for y, and c for z:
(assert (= (f (f d c) c) (f d (f c c))))

; Substituting d for x, c for y, and d for z:
(assert (= (f (f d c) d) (f d (f c d))))

; Substituting d for x, d for y, and e for z:
(assert (= (f (f d d) e) (f d (f d e))))

; Substituting d for x, d for y, and c for z:
(assert (= (f (f d d) c) (f d (f d c))))

; Substituting d for x, d for y, and d for z:
(assert (= (f (f d d) d) (f d (f d d))))

; Substituting e for x:
(assert (= (f e e) e))
(assert (= (f e e) e))

; Substituting c for x:
(assert (= (f c e) c))
(assert (= (f e c) c))

; Substituting d for x:
(assert (= (f d e) d))
(assert (= (f e d) d))

; Substituting e for x:
(assert (= (f e (g e)) e))
(assert (= (f (g e) e) e))

; Substituting c for x:
(assert (= (f c (g c)) e))
(assert (= (f (g c) c) e))

; Substituting d for x:
(assert (= (f d (g d)) e))
(assert (= (f (g d) d) e))

; Assert the given conditions
(assert (and (= (f c d) e) (= (f d c) e) (not (= d (g c)))))

; Assert the inverse relation
(assert (forall ((x Int))
  (= (g (f x e)) x)
))

(check-sat)

