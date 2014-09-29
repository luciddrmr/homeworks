;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-string-ith) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Write your own recursive version of string-ith.   Not using string-ith
;of course.

(define my-string-ith (lambda (str num1)
    (my-function-helper arg1 arg2 arg3)))

(define my-string-ith-helper (lambda (arg1 arg2 arg3)
        (cond  [ test base-case ]
               [ test2 another-base-case ]
               [ else recursion-expression ]))))

"Test 1"
(string-ith "cat" 0)

"Test 2"
(string-ith "hamburger" 10)

"Test 3"
(string-ith "" 0)

"Test 4"
(string-ith "" 2)