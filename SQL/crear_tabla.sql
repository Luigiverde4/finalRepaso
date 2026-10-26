CREATE TABLE characters (
    id                  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name                TEXT NOT NULL,
    status              TEXT,
    species             TEXT,
    type                TEXT,
    gender              TEXT,
    origin_name         TEXT,
    location_name       TEXT,
    image               TEXT,
    url,                TEXT,
    created_at          NOT NULL DEFAULT NOW()
);


INSERT INTO characters (name, status, species, type, gender, origin_name, location_name) 
VALUES
    ('Pelé', 'rich', 'human', 'A', 'M', 'Edson Arantes do Nascimento', 'Brazil'),
    ('Romario', 'rich', 'human', 'B', 'M', 'Romário de Souza Faria', 'Brazil'),
    ('Sócrates', 'poor', 'human', 'A', 'M', 'Sócrates Brasileiro Sampaio de Souza Vieira de Oliveira', 'Brazil');

INSERT INTO characters (name, status, species, type, gender, origin_name, location_name) 
VALUES
    ('Messi', 'rich', 'human', 'A', 'M', 'Lionel Andrés Messi', 'Argentina'),
    ('Cristiano Ronaldo', 'rich', 'human', 'A', 'M', 'Cristiano Ronaldo dos Santos Aveiro', 'Portugal'),
    ('Maradona', 'rich', 'human', 'O', 'M', 'Diego Armando Maradona', 'Argentina'),
    ('Neymar', 'rich', 'human', 'B', 'M', 'Neymar da Silva Santos Júnior', 'Brazil'),
    ('Ronaldinho', 'rich', 'human', 'O', 'M', 'Ronaldo de Assis Moreira', 'Brazil'),
    ('Ronaldo Nazário', 'rich', 'human', 'O', 'M', 'Ronaldo Luís Nazário de Lima', 'Brazil'),
    ('Mbappé', 'rich', 'human', 'AB', 'M', 'Kylian Mbappé Lottin', 'France'),
    ('Zidane', 'rich', 'human', 'A', 'M', 'Zinedine Yazid Zidane', 'France'),
    ('Iniesta', 'rich', 'human', 'A', 'M', 'Andrés Iniesta Luján', 'Spain'),
    ('Xavi', 'rich', 'human', 'O', 'M', 'Xavier Hernández Creus', 'Spain'),
    ('Sergio Ramos', 'rich', 'human', 'B', 'M', 'Sergio Ramos García', 'Spain'),
    ('Lewandowski', 'rich', 'human', 'A', 'M', 'Robert Lewandowski', 'Poland'),
    ('Modric', 'rich', 'human', 'O', 'M', 'Luka Modrić', 'Croatia'),
    ('Haaland', 'rich', 'human', 'A', 'M', 'Erling Braut Haaland', 'Norway'),
    ('Salah', 'rich', 'human', 'O', 'M', 'Mohamed Salah Hamed Mahrous Ghaly', 'Egypt');

SELECT name
FROM characters;
