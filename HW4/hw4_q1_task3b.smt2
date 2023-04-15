(set-logic QF_LRA)

; Declare variables
(declare-fun r () Real)
(declare-fun s () Real)


; Define terms
(define-fun term1 ((pff Real) (pfb Real) (pbf Real) (pbb Real)) Real
  (+ (* r (- (+ (* pff s) (* pfb (- 1 s))) (+ (* pbf s) (* pbb (- 1 s))))))
)
(define-fun term2 ((r1 Real) (pff Real) (pfb Real) (pbf Real) (pbb Real)) Real
  (+ (* r1 (- (+ (* pff s) (* pfb (- 1 s))) (+ (* pbf s) (* pbb (- 1 s))))))
)
(define-fun term3 ((qff Real) (qfb Real) (qbf Real) (qbb Real)) Real
  (+ (* s (- (+ (* qff r) (* qfb (- 1 r))) (+ (* qbf r) (* qbb (- 1 r))))))
)
(define-fun term4 ((s1 Real) (qff Real) (qfb Real) (qbf Real) (qbb Real)) Real
  (+ (* s1 (- (+ (* qff r) (* qfb (- 1 r))) (+ (* qbf r) (* qbb (- 1 r))))))
)

(define-fun formula () Bool (exists ((r Real) (s Real))
    (forall ((r1 Real) (s1 Real) (pff Real) (pfb Real) (pbf Real) (pbb Real) (qff Real) (qfb Real) (qbf Real) (qbb Real))
      (=> (and (>= r1 0) (<= r1 1) (>= s1 0) (<= s1 1)) (and (>= r 0) (<= r 1) (>= s 0) (<= s 1)
           (>= (term1 pff pfb pbf pbb) (term2 r1 pff pfb pbf pbb)) (>= (term3 qff qfb qbf qbb) (term4 s1 qff qfb qbf qbb)))
      ))
    )
)

; Define constraints
(assert (not formula))
(apply qe)
