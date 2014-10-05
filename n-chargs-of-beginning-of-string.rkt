;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname n-chargs-of-beginning-of-string) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; beginning-of-string-to-n returns the first num characters of str in its own string.

(define n-chars-of-beginning-of-string (lambda (str num)
      (cond [(equal? 0 num) ""]
            [ else (string-append   (n-chars-of-beginning-of-string str (- num 1))
                                    (string-ith str (- num 1))) ])))

(n-chars-of-beginning-of-string "testing" 4)
