(define (domain domain_name)

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
                    )
    :effect (and (not (boat-at ?b ?from))
                (boat-at ?b ?to)     
            )
)

(:action load-cargo
    :parameters ()
    :precondition (and )
    :effect (and )
)


)