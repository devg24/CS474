(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)


(define-fun f1() Bool(or q (not r)))
(define-fun f2() Bool(or (not p) r))
(define-fun f3() Bool(or (not q) r p))
(define-fun f4() Bool(or (not q) q p))
(define-fun f5() Bool(or q (not r)))

(assert (and f1 f2 f3 f4 f5))

(check-sat)