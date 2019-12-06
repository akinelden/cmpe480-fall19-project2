(define (domain wgc-world)

(:requirements :strips ::typing)

(:types cargo dock boat
)

; un-comment following line if constants are needed
(:constants 
    farmer - boat
)
(:predicates 
    (cargo-at ?c - cargo ?d - dock); Whether the cargo c is at dock d
    (boat-at ?b - boat ?d - dock) ; Whether the boat b is at dock d
    (free ?b - boat) ; Whether the boat b is free
    (carrying ?b - boat ?c - cargo ) ; Whether the boat b is carrying cargo c
    (eats ?c1 - cargo ?c2 - cargo) ; Whether cargo c1 eats cargo c2

)

(:action move-boat
    :parameters (?b - boat ?from ?to - dock)
    :precondition (and (boat-at ?b ?from)
                (forall (?c1 ?c2 - cargo) (not (eats ?c1 ?c2)))
    )
    :effect (and (not (boat-at ?b ?from))
                (boat-at ?b ?to)     
    )
)

(:action load-cargo
    :parameters (?b - boat ?c - cargo ?d - dock)
    :precondition (and (boat-at ?b ?d)
                        (cargo-at ?c ?d)
                        (free ?b)
    )
    :effect (and (not (cargo-at ?c ?d))
                  (not (free ?b))
                  (carrying ?b ?c)
    )
)

(:action unload-cargo
    :parameters (?b - boat ?c - cargo ?d - dock)
    :precondition (and (boat-at ?b ?d)
                        (carrying ?b ?c)
    )
    :effect (and (not (carrying ?b ?c))
                (cargo-at ?c ?d)
                (free ?b)
    )
)

)