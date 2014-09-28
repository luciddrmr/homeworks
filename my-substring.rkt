;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-substring) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;  Write your own, recursive version of substring:
;     http://docs.racket-lang.org/htdp-langs/intermediate.html#%28def._htdp-intermediate._%28%28lib._lang%2Fhtdp-intermediate..rkt%29._substring%29%29
;  Not using substring, of course.

(define my-substring (lambda (str num1 num2)
       (cond   [ (equal? str "") (error "my-substring expects a non-empty string")]
        [ else (my-substring-helper str 0) ])))

(define my-substring-helper (lambda (str count)
        (cond  [ (equal? str "") empty]
               [ else (cons  (string-ith str 0)))) ])))

(my-substring "hello world" 1 5)
(my-substring "" 1 5)


