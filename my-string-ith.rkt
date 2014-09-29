;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-string-ith) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Write your own recursive version of string-ith.   Not using string-ith
;of course.

(define my-function (lambda (arg1 arg2)
    (my-function-helper arg1 arg2 arg3)))

(define my-function-helper (lambda (arg1 arg2 arg3)
    (let ( [ some-var (some-expr) ]
           [ another-var (another-expr) ] )
        (cond  [ test base-case ]
               [ test2 another-base-case ]
               [ else recursion-expression ]))))