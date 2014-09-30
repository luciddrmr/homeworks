;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-string-ith) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Write your own recursive version of string-ith.   Not using string-ith
;of course.

(define my-string-ith (lambda (str num)
     (cond  [ (equal? 0 (string-length str)) str ]
            [  ]
            [ else (my-string-ith str num)]))

(define my-string-ith-helper (lambda (str num)
        (cond  [ test base-case ]
               [ test2 another-base-case ]
               [ else (my-string-ith-helper str num) ]))))

"Test 1"
(string-ith "cat" 0)

"Test 2"
(string-ith "hamburger" 10)

"Test 3"
(string-ith "" 0)

"Test 4"
(string-ith "" 2)