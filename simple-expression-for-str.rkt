;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname simple-expression-for-str) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define str1 "aa")
(define str2 "bb")

; I need an expression that is true iff. the length of str1 is 1 AND 
;       that character in str1 is equal to the first character in str2.

; LENGTH-OF-STR1-IS-1   AND FIRST-CHAR-STR2-IS-STR1

; (and LENGTH-OF-STR1-IS-1  FIRST-CHAR-STR2-IS-STR1)

(define is-str1-len-1-and-equal-to-start-str2 (lambda (str1 str2)
(and (equal? (string-length str1) 1) (equal? (string-ith str2 0) (string-ith str1 0)))))

