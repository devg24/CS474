(set-logic QF_LRA)

; Declare variables
(declare-fun r () Real)
(declare-fun s () Real)


; Define terms
(define-fun term1 () Real
  (+ (* r (- (+ (* 90 s) (* 20 (- 1 s))) (+ (* 30 s) (* 60 (- 1 s))))))
)
(define-fun term2 ((r1 Real)) Real
  (+ (* r1 (- (+ (* 90 s) (* 20 (- 1 s))) (+ (* 30 s) (* 60 (- 1 s))))))
)
(define-fun term3 () Real
  (+ (* s (- (+ (* 10 r) (* 70 (- 1 r))) (+ (* 80 r) (* 40 (- 1 r))))))
)
(define-fun term4 ((s1 Real)) Real
  (+ (* s1 (- (+ (* 10 r) (* 70 (- 1 r))) (+ (* 80 r) (* 40 (- 1 r))))))
)

; Define constraints
(assert (exists ((r Real) (s Real))
    (forall ((r1 Real) (s1 Real))
      (and (>= r 0) (<= r 1) (>= s 0) (<= s 1)
           (>= term1 (term2 r1)) (>= term3 (term4 s1))
      )
    )
))

(check-sat)
(get-model)
