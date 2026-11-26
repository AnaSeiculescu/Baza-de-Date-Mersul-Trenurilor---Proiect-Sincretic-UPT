CREATE TABLE statii (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nume VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ranguri_trenuri (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    denumire VARCHAR(50) NOT NULL UNIQUE,
    CONSTRAINT check_rang CHECK (
        denumire IN ('Regio', 'Regio-Expres', 'Inter-City')
    )
);