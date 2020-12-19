;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise_005) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define leaves_radius 40)
(define trunk_width 10)
(define trunk_height 40)
(define margin 2)

(define leaves
  (circle leaves_radius "solid" "green"))

(define trunk
  (rectangle trunk_width trunk_height "solid" "brown"))

(define picture
  (overlay/xy leaves (- leaves_radius (/ trunk_width 2)) (* 2 leaves_radius) trunk))

(define scene_w
  (+ (image-width picture) margin))
(define scene_h
  (+ (image-height picture) margin))
(define scene
  (empty-scene scene_w scene_h))

(define draw_tree
  (place-image picture (/ scene_w 2) (/ scene_h 2) scene))