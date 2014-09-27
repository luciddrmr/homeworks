;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname my-string-contains) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;  Using your solution to 2.a.e and explode implement your own version of
;  string-contains?
;    http://docs.racket-lang.org/htdp-langs/intermediate.html#%28def._htdp-intermediate._%28%28lib._lang%2Fhtdp-intermediate..rkt%29._string-contains~3f%29%29

(define my-string-contains (lambda (str1 str2)
    (cond  [ (equal? str2 "") false ]
        [ (equal? str1 "") (error "first string of my-string-contains cannot be empty")]
        [ else (my-string-contains-helper str1 str2) ])))

(define my-string-contains-helper (lambda (str1 str2)
        (cond  [ (equal? str2 "") false ]
         [ (equal? (string-ith str1 0) (string-ith str2 0))  
       (cond [ (equal? "" (substring str1 1 (string-length str1))) true]
             [ (beginnings (substring str1 1 (string-length str1) (substring str2 1 (string-length str2)))) "SOMERESULT"]
         [ else (my-string-contains-helper str1 (substring str2 1 (string-length str2)))])])))

(define beginnings (lambda (str1 str2) 
        (cond [ (equal? str1 "") (error "first string of beginnings cannot be empty")] 
        [ else (beginnings-helper str1 str2)])))

(define beginnings-helper (lambda (str1 str2)
        (cond [ (equal? str1 "") true ]
        [ (equal? str2 "") false ]
        [ (not (equal? (string-ith str1 0) (string-ith str2 0))) false ]
        [ else (beginnings-helper (substring str2 1  (string-length str2) (substring str2 1 (string-length str2))))])))

"test beginnings 1"
true
(beginnings "y" "yabc")

"test beginnings 2"
true
(beginnings "y" "y")

"test beginnings 3"
false
(beginnings "gac" "gdaec")

"test 1:"
true
(my-string-contains "y" "yabc")

"test 1.b:"
false
(my-string-contains "x" "yabc")

"test 1.a"
true
(my-string-contains "ab" "daby")

"test 2:"
false
(my-string-contains "ab" "cbdaxY")

"test 3"
false
(my-string-contains "ab" "")

"test 4"
false
(my-string-contains "gac"  "cdgae")

"test 5"
false
(my-string-contains "alfiewinnie" "alfieikawinniebalto")

"test 6"
false
(my-string-contains "xyz12" "abc")
