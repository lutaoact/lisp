(define (sqrt-iter guess x)
    (define new-guess (improve guess x))
    (if (good-enough? guess new-guess)
        new-guess
        (sqrt-iter new-guess x)))

(define (improve y x)
    (/
        (+
            (/ x (square y))
            (* 2 y))
        3))

(define (good-enough? old-guess new-guess)
    (<
        (/
            (abs (- old-guess new-guess))
            new-guess)
        0.001))

(define (sqrt3 x)
    (sqrt-iter 1.0 x))
