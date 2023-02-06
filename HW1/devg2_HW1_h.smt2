
(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)
(declare-const p40 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)

(assert (and (or p00 p01 p02) (or p10 p11 p12) (or p20 p21 p22) (or p30 p31 p32) (or p40 p41 p42)))

(define-fun color00() Bool (=> p00 and (not p10) (not p20)))

(define-fun color01() Bool (=> p01 and (not p11) (not p21)))

(define-fun color02() Bool (=> p02 and (not p12) (not p22)))

(define-fun color10() Bool (=> p10 and (not p00) (not p20) (not p30) (not p40)))

(define-fun color11() Bool (=> p11 and (not p01) (not p21) (not p31) (not p41)))

(define-fun color12() Bool (=> p12 and (not p02) (not p22) (not p32) (not p42)))

(define-fun color20() Bool (=> p20 and (not p00) (not p10) (not p30) (not p40)))

(define-fun color21() Bool (=> p21 and (not p01) (not p11) (not p31) (not p41)))

(define-fun color22() Bool (=> p22 and (not p02) (not p12) (not p32) (not p42)))

(define-fun color30() Bool (=> p30 and (not p10) (not p20)))

(define-fun color31() Bool (=> p31 and (not p11) (not p21)))

(define-fun color32() Bool (=> p32 and (not p12) (not p22)))

(define-fun color40() Bool (=> p40 and (not p10) (not p20)))

(define-fun color41() Bool (=> p41 and (not p11) (not p21)))

(define-fun color42() Bool (=> p42 and (not p12) (not p22)))

(assert (and color00 color01 color02 color10 color11 color12 color20 color21 color22 color30 color31 color32 color40 color41 color42))

(check-sat)