(defrule check_animal
   ?f <- (animal ?type)
   (or (test (eq ?type duck))
       (test (eq ?type turtle)))
   =>
   (printout t "This is a " ?type "." crlf))

(reset)

(assert (animal duck))
(assert (animal turtle))
(assert (animal lion))

(run)