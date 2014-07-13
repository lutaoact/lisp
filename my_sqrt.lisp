(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001))

(define (my_sqrt x)
    (sqrt-iter 1.0 x))

;(average 3 2.0)
;(improve 1.0 2)
;(good-enough? 1.41421 2)
;(sqrt-iter 1.0 2)
(my_sqrt 9)
