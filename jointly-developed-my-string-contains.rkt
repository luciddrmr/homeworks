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


(define my-string-contains? (lambda (str1 str2) str1))
  ; Probably we're done if there's no str2 left.
  
  
;Sub problems:
  ; we need an expression that returns true iff. the first character of string1 and string2 are equivalent.
;     (equal? (substring str1 0 1) (substring str2 0 1))
  
  
; Separate and easier problem:
   ; What happens when str1 is one character long?  Does that make thing easier?
  
  ; my-string-contains-one-char-only?  requires its first argument to be a string of length 1
  ;  and return true iff. that character appears in str2 at least once.
  
(define my-string-contains-one-char-only? (lambda (short-string str2)
   (cond [ (not (equal? (string-length short-string) 1)) (error "function only works when first argument is a string of length 1")]
         [ (equal? str2 "") false ]
         [ (equal? short-string (string-ith str2 0)) true]
         [ else (my-string-contains-one-char-only? short-string (substring str2 1 (string-length str2)))])))
  
  
"my-string-contains-one-char-only? test 1"
true
(my-string-contains-one-char-only? "a" "bccjguagjghu")
  
  
  