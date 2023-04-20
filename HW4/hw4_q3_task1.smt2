;; Declare the function symbol f with two arguments
(declare-fun f (Int Int) Int)

;; Declare the function symbol g with one argument
(declare-fun g (Int) Int)

;; Declare the constant symbols e and c
(declare-const e Int)
(declare-const c Int)

;; Formula 1
(assert (= (f (f e e) e) (f e (f e e))))

;; Formula 2
(assert (= (f (f c e) e) (f c (f e e))))

;; Formula 3
(assert (= (f (f e c) e) (f e (f c e))))

;; Formula 4
(assert (= (f (f c c) e) (f c (f c e))))

;; Formula 5
(assert (= (f (f e e) c) (f e (f e c))))

;; Formula 6
(assert (= (f (f c e) c) (f c (f e c))))

;; Formula 7
(assert (= (f (f e c) c) (f e (f c c))))

;; Formula 8
(assert (= (f (f c c) c) (f c (f c c))))

;; Formula 9
(assert (and (= (f e e) e) (= (f e e) e)))

;; Formula 10
(assert (and (= (f c e) c) (= (f e c) c)))

;; Formula 11
(assert (and (= (f e (g e)) e) (= (f (g e) e) e)))

;; Formula 12
(assert (and (= (f c (g c)) e) (= (f (g c) c) e)))

;; Formula 13
(assert (and (= (f e c) e) (= (f c e) e) (not (= c e))))

;; Formula 14
(assert (and (= (f c c) c) (= (f c c) c) (not (= c e))))

;; Check satisfiability
(check-sat)
