;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_027) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define BASE_PRICE 5.0)
(define BASE_ATTENDEES 120)
(define FIX_COST 180)
(define VARIABLE_COST 0.04)
(define AVE_ATTENDANCE_CHANGE 15)
(define PRICE_CHANGE_STEP 0.1)

(define (attendees ticket-price)
  (- BASE_ATTENDEES (* (- ticket-price BASE_PRICE) (/ AVE_ATTENDANCE_CHANGE PRICE_CHANGE_STEP))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIX_COST (* VARIABLE_COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))