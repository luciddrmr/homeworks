;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-string-ith) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Write your own recursive version of string-ith.   Not using string-ith
;of course.

(define my-string-ith (lambda (str num)
    (cond  [ (equal? 0 (string-length str)) str ]
           [ (equal? 0 num) (substring str 0 1 ) ]
           [ (and (equal? 1 num) (equal? 1 (string-length str))) "error: my-string-ith: expected an exact integer in [0, 1) (i.e., less than the length of the given string) for the second argument, but received 1" ]
           [ else (my-string-ith-helper str)]))

(define my-string-ith-helper (lambda (str)
    (cond  [                         ]
           [ test2 another-base-case ]
           [ else (my-string-ith-helper str (substring str num (+1 num)) ]))))

"Test 1"
(my-string-ith "cat" 0)

"Test 2"
(my-string-ith "hamburger" 10)

"Test 3"
(my-string-ith "" 0)

"Test 4"
(my-string-ith "" 2)

"Test 5"
(my-string-ith "h" 1)

"Test 6"
(my-string-ith "h" 0)