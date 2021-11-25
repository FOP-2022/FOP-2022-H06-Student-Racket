;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname H06-Racket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Type: integer -> integer
( define ( compute-strange-value n )
   ( if ( <= n 0 ) 1 ( if ( = 0 ( modulo n 2 ) )
                          ( + 1 ( compute-strange-value ( - n 1 ) ) )
                          ( + 1 ( compute-strange-value ( - n 3 ) ) ) ) ) )

;; Type: integer integer -> integer
( define ( what-the-hell-is-that? m n )
   ( cond
      [ ( or ( <= m 0 ) ( <= n 0 ) ) 0 ]
      [ ( < m n ) ( what-the-hell-is-that? ( + 1 m ) ( - n m ) ) ]
      [ else ( what-the-hell-is-that? ( + 1 n ) ( - m n ) ) ] ) )

;; Type: ( list of real ) -> ( list of real )
( define ( build lst )
   ( if ( empty? lst )
        empty
        ( cons ( + 3.14 ( * 2 ( first lst ) ) ) ( build ( rest lst ) ) ) ) )