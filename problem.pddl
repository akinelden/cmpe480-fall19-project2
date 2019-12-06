(define (problem wgc-crossing) (:domain cross-river)
(:objects b - boat wolf goat cabbage - cargo asia europe - dock
)

(:init
    (boat-at b asia) 
    (cargo-at wolf asia) 
    (cargo-at goat asia)
    (cargo-at cabbage asia)
    (free b)
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
