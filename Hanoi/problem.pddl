(define (problem p1)
    (:domain hanoi)
    (:objects x y z - pr k1 k2 k3 k4 k5 k0 - kr)
    (:init 
        (mniejszy k1 k5) (mniejszy k2 k5) (mniejszy k3 k5) (mniejszy k4 k5) 
        (mniejszy k1 k4) (mniejszy k2 k4) (mniejszy k3 k4) 
        (mniejszy k1 k3) (mniejszy k2 k3) 
        (mniejszy k1 k2)
        (on-bottom k5 x)
        
        (clean z) (clean y)
        (na-palu k1 x) (na-palu k2 x) (na-palu k3 x) (na-palu k4 x) (na-palu k5 x) 
    )
    (:goal
        (and
            ;(na-palu k2 y)
            (na-palu k5 z)
            (na-palu k4 z)
            (na-palu k3 z)
            (na-palu k2 z)
            (na-palu k1 z)
        )
    )
)