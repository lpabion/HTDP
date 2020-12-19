;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_009) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define input #false)

(define check
  (cond
    [(string? input) (string-length input)]
    [(image? input) (*(image-width input) (image-height input))]
    [(number? input) (if (<= input 0) input (- input 1))]
    [(boolean? input) (if (and input #true) 10 20)]))