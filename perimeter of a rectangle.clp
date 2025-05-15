(deftemplate rect
   (slot height)
   (slot width)
)

(defrule perimeter
   ?r <- (rect (height ?h) (width ?w))
   =>
   (bind ?p (* 2 (+ ?h ?w)))
   (printout t "The perimeter of the rectangle is: " ?p crlf)
)

(reset)

(assert (rect (height 5) (width 10)))

(run)
