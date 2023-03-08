(declare-fun l_1 () Real)
(declare-fun u_1 () Real)
(declare-fun l_2 () Real)
(declare-fun u_2 () Real)
(declare-fun z () Real)

(define-fun my_formula () Bool
  (Exists ((w Real))
    (and (< l_1 w) (< w u_1) (< l_2 w) (< w u_2) (not (= w z)))) )

(define-fun my_quantified_formula () Bool
  (forall ((z Real))
    (implies (and (< l_1 z) (< z u_1) (< l_2 z) (< z u_2))
             my_formula)))

(assert my_quantified_formula)
