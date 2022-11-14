(define 
        (domain hanoi)
    
        (:requirements :adl)
    
        (:types
            pr kr
        )
    
        (:predicates
            (mniejszy ?kr ?kr1 - kr)
            (clean ?x)
            (na-palu ?k -kr ?p -pr)
            (on-bottom ?k -kr ?r -pr)
        )
        (:action przesun-na-pusty
            :parameters (?r ?r1 - pr ?k -kr)
            :precondition 
            (and 
                (clean ?r1)
                (na-palu ?k ?r)
                (not (exists (?d - kr) (and (mniejszy ?d ?k) (na-palu ?d ?r))))
                (not (= ?r ?r1))
            )
            :effect 
            (and 
                (not(clean ?r1)) 
                (na-palu ?k ?r1)
                (not(na-palu ?k ?r))
                (on-bottom ?k ?r1)
                (when
                (on-bottom ?k ?r)
                (and
                (not(on-bottom ?k ?r))
                (clean ?r)
                )
                )
            )
        )
        (:action przesun
            :parameters (?r ?r1 - pr ?k  ?k1 -kr)
            :precondition 
            (and 
                (mniejszy?k ?k1)
                (na-palu ?k ?r)
                (na-palu ?k1 ?r1)
                (not (exists (?d - kr) (and (mniejszy ?d ?k) (na-palu ?d ?r))))
                (not (exists (?d - kr) (and (mniejszy ?d ?k) (na-palu ?d ?r1))))
                (not (= ?r ?r1))
            )
            :effect 
            (and 
                (na-palu ?k ?r1)
                (not(na-palu ?k ?r))
                (when
                (on-bottom ?k ?r)
                (and
                (not(on-bottom ?k ?r))
                (clean ?r)
                )
                )
            )
        )
    )