# ERD for table relation of MOVIES DATABASE
```mermaid
    erDiagram
        actors{
            id int
            first_name Varchar(100)
            last_name Varchar(100)
            gender character(1)
        }
        directors{
            id int
            first_name Varchar(100)
            last_name Varchar(100)
        }
        directors_genres{
            director_id bigint
            genre varchar(100)
        }

        movies{
            id bigint
            name varchar(100)
            year bigint
            rankscore float
        }
        movies_directors{
            director_id bigint
            movie_id bigint
        }

        movies_genres{
            movie_id bigint
            genre varchar(100)
        }
        roles{
            actor_id bigint
            movie_id bigint
            role varchar(100)
        }

        directors ||--o{ directors_genres : "A director can have multiple genres"
        movies ||--o{ movies_directors : "A movie can have multiple directors"
        directors ||--o{ movies_directors : "A director can direct multiple movies"
        movies ||--o{ movies_genres : "A movie can have multiple genres"
        actors ||--o{ roles : "An actor can play multiple roles"
        movies ||--o{ roles : "A movie can have multiple actors in roles"
```