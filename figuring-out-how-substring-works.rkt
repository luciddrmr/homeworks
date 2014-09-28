;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname figuring-out-how-substring-works) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
"Test 1"
"ello"
(substring "hello world" 1 5)
"Test 2"
"error: my-subtring expects a non-empty string"
(substring "" 1 5)
"Test 3"
"error: requested substring is longer than string"
(substring "c" 0 3)
"Test 4"
""
(substring "cat in the hat" 0 0)
"Test 5"
""
(substring "" 0 0)

"Test 6"
;Should this be an error?
(substring "cat" 1 5)
