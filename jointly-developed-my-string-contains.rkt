;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname jointly-developed-my-string-contains) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; jointly-developed-my-string-contains
;   This is the version of my-string-contains that Carol and Bradley developed together,
;    applying our list of design patterns.

;        (my-string-contains? s t) → boolean?

;      s : string
;      t : string
;   Determines whether the first string appears literally in the second one. 


(define my-string-contains? (lambda str1 str2)
  ; Probably we're done if there's no str2 left.
  
  
;Sub problems:
  ; we need an expression that returns true iff. the first character of string1 and string2 are equivalent.
(equal? (substring str1 0 1) (substring str2 0 1))
  