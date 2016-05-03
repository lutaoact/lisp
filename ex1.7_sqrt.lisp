(define (sqrt-iter guess x)
    (define new-guess (improve guess x))
    new-guess
    (if (good-enough? guess new-guess)
        new-guess
        (sqrt-iter new-guess x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
    (<
        (/
            (abs (- old-guess new-guess))
            new-guess)
        0.001))

(define (my_sqrt x)
    (sqrt-iter 1.0 x))
