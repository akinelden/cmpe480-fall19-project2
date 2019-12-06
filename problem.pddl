(define (problem wgc-crossing) (:domain cross-river)
(:objects farmerboat - boat wolf goat cabbage - cargo asia europe - dock
)

(:init
    (boat-at farmerboat asia) 
    (cargo-at wolf asia) 
    (cargo-at goat asia)
    (cargo-at cabbage asia)
    (free farmerboat)
    (eats wolf goat)
    (eats goat cabbage)
)

(:goal (and
    (cargo-at wolf europe) 
    (cargo-at goat europe)
    (cargo-at cabbage europe)
    )
)

)
