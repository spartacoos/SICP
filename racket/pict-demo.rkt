#lang racket

(require pict
         file/convertible)

(define output-path "images/pict-demo.png")

(define drawing
  (hc-append
   24
   (circle 80)
   (rectangle 120 80)
   (text "SICP" null 32)))

(send (pict->bitmap drawing) save-file output-path 'png)

(display output-path)
(newline)
