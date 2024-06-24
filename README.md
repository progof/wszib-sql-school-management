# Wszib SQL School Management

**Autorzy:**

- [Oleh Ortynskyi](https://github.com/progof)
- [Artem Melnyk](https://github.com/MellKam)

## 1. Wykaz tematów umieszczono w 'Materiałach dydaktycznych' (w tym miejscu nie ma możliwości dołączenia pliku)

```
Projekt nr. 14

Cele projektu: zaprojektuj bazę danych do przechowywania informacji o pracownikach szkoły i uczniach spełniających następujące właściwości:

1. Pracownicy będą mieli swój identyfikator, imię i nazwisko oraz zajęcia, które prowadzą.
2. Uczeń będzie miał imię i nazwisko, sekcję, klasę.
3. Kolejna tabela zawierająca sekcję, przedmiot i informacje o nauczycielu.
4. Dalej będzie zawierał informacje o opłatach dla studentów.
5. Jeden zawiera informacje o wynagrodzeniu nauczycieli.
6. Sale przydzielane są do zajęć z uwzględnieniem kolizji czasowej tej samej sali lub laboratorium,
   studenci nie mogą być wpisani do więcej niż jednej sekcji, nie powinien tam przebywać student, który nie uiścił opłat do określonego terminu.

   Tabele: Pracownicy, Uczniowie, Sekcja-Nauczyciel przedmiotowy, Opłaty za ucznia, Wynagrodzenia nauczycieli, Przydziały pomieszczeń.
```

## 2. Projekt winien obejmować co najmniej:

### a. opis koncepcji rozwiązania:

Projektowana baza danych ma na celu zarządzanie informacjami dotyczącymi pracowników szkoły, uczniów, prowadzonych zajęć oraz powiązanych z nimi aspektów organizacyjnych i finansowych. Struktura bazy danych została zaprojektowana z uwzględnieniem różnych elementów i ich wzajemnych relacji. Kluczowe elementy to:

- Pracownicy (`teachers`) - Tabela przechowuje dane osobowe nauczycieli. Każdy nauczyciel ma unikalny identyfikator, imię i nazwisko.

- Wynagrodzenia nauczycieli (`teacher_salaries`) - Tabela zawiera informacje o wynagrodzeniach nauczycieli, w tym kwotę wynagrodzenia oraz datę wypłaty. Dzięki temu możliwe jest monitorowanie i zarządzanie płatnościami dla nauczycieli.

- Uczniowie (`students`) - Tabela zawiera dane osobowe uczniów, informacje o grupach (sekcjach) do których należą. Każdy uczeń ma unikalny identyfikator, imię, nazwisko oraz identyfikator grupy.

- Opłaty za ucznia (`student_courses`) - Tabela przechowuje informacje o dokonanych płatnościach za kursy przez uczniów. Każdy zapis zawiera identyfikator ucznia, identyfikator kursu oraz datę płatności. Mechanizm płatności umożliwia kontrolę nad zapisami na kursy, uniemożliwiając uczestnictwo uczniom, którzy nie dokonali wymaganych opłat.

- Klasy (`groups`) - Tabela przechowuje informacje o grupach uczniów. Każda grupa ma unikalny identyfikator i nazwę.

- Przedmioty (`subjects`) - Tabela przechowuje informacje o przedmiotach nauczanych w szkole. Każdy przedmiot ma unikalny identyfikator i nazwę.

- Klasy i przedmioty (`group_subjects`) - Tabela przypisuje przedmioty do grup uczniów oraz nauczycieli odpowiedzialnych za te przedmioty. Dzięki temu możliwe jest łatwe zarządzanie planem zajęć i przypisaniami nauczycieli.

- Zajęcia (`courses`) - Tabela zajęć przechowuje informacje o dostępnych kursach, ich terminach oraz kosztach, umożliwiając kompleksowe zarządzanie ofertą edukacyjną szkoły.

- Pomieszczenia (`rooms`) - Tabela przechowuje informacje o dostępnych salach, w tym unikalne identyfikatory i nazwy pomieszczeń, co umożliwia ich efektywne wykorzystanie.

- Przydziały pomieszczeń (`room_assignments`) - Tabela zarządza przydziałami sal na zajęcia, uwzględniając harmonogram zajęć, aby zapobiegać kolizjom czasowym.

- Harmonogramy (`courses_schedule`, `group_subject_schedule`) - Te tabele umożliwiają szczegółowe planowanie zajęć, przypisując konkretne przedmioty i kursy do określonych sal w określonych godzinach, co pozwala na efektywne wykorzystanie zasobów.

### b. dokumentację przypadków użycia (np. diagramy UML use case):

#### **USE CASE:** Student nabywa dostęp do kursu, natomiast administrator dodaje lekcje do danego kursu:

<img src="https://i.imgur.com/SLGCq7x.png" />

---

#### **USE CASE:** Administrator wypłaca pensje wykładowcy, a wykładowca sprawdza swoje wynagrodzenie.

<img src="https://i.imgur.com/NGQQeCJ.png" />

### c. dokumentację (modelu fizycznego) schematu bazy danych z wykorzystaniem dowolnej notacji, z wyraźnym określeniem wszelkich niezbędnych kluczy głównych

## Model Fizyczny Schematu Bazy Danych

### Tabela rooms

- **Opis**: Tabela przechowująca informacje o salach.

| Nazwa atrybutu | Typ         | Opis/Uwagi                       |
| -------------- | ----------- | -------------------------------- |
| room_id        | INT         | Klucz główny, identyfikator sali |
| name           | VARCHAR(64) | Wymagane, unikalna nazwa sali    |

---

### Tabela room_assignments

- **Opis**: Tabela przechowująca przypisania sal do zajęć.

| Nazwa atrybutu | Typ      | Opis/Uwagi                                    |
| -------------- | -------- | --------------------------------------------- |
| assignment_id  | INT      | Klucz główny, identyfikator przypisania       |
| room_id        | INT      | Wymagane, klucz obcy do tabeli rooms(room_id) |
| start_time     | DATETIME | Wymagane, czas rozpoczęcia przypisania        |
| end_time       | DATETIME | Wymagane, czas zakończenia przypisania        |

---

### Tabela courses

- **Opis**: Tabela przechowująca informacje o kursach.

| Nazwa atrybutu | Typ           | Opis/Uwagi                        |
| -------------- | ------------- | --------------------------------- |
| course_id      | INT           | Klucz główny, identyfikator kursu |
| name           | VARCHAR(64)   | Wymagane, unikalna nazwa kursu    |
| start_date     | DATE          | Wymagane, data rozpoczęcia kursu  |
| end_date       | DATE          | Wymagane, data zakończenia kursu  |
| price          | DECIMAL(10,2) | Wymagane, cena kursu              |

---

### Tabela courses_schedule

- **Opis**: Tabela przechowująca harmonogram kursów i przypisania do sal.

| Nazwa atrybutu | Typ | Opis/Uwagi                                                     |
| -------------- | --- | -------------------------------------------------------------- |
| course_id      | INT | Wymagane, klucz obcy do tabeli courses(course_id)              |
| assignment_id  | INT | Wymagane, klucz obcy do tabeli room_assignments(assignment_id) |

---

### Tabela groups

- **Opis**: Tabela przechowująca informacje o grupach kursowych.

| Nazwa atrybutu | Typ         | Opis/Uwagi                        |
| -------------- | ----------- | --------------------------------- |
| group_id       | INT         | Klucz główny, identyfikator grupy |
| name           | VARCHAR(64) | Wymagane, unikalna nazwa grupy    |

---

### Tabela students

- **Opis**: Tabela przechowująca informacje o studentach.

| Nazwa atrybutu | Typ         | Opis/Uwagi                                      |
| -------------- | ----------- | ----------------------------------------------- |
| student_id     | INT         | Klucz główny, identyfikator studenta            |
| first_name     | VARCHAR(64) | Wymagane, imię studenta                         |
| last_name      | VARCHAR(64) | Wymagane, nazwisko studenta                     |
| group_id       | INT         | Wymagane, klucz obcy do tabeli groups(group_id) |

---

### Tabela student_courses

- **Opis**: Tabela przechowująca informacje o przypisaniach studentów do kursów.

| Nazwa atrybutu | Typ      | Opis/Uwagi                                |
| -------------- | -------- | ----------------------------------------- |
| student_id     | INT      | Klucz obcy do tabeli students(student_id) |
| course_id      | INT      | Klucz obcy do tabeli courses(course_id)   |
| payment_date   | DATETIME | Wymagane, data dokonania płatności        |

---

### Tabela teachers

- **Opis**: Tabela przechowująca informacje o nauczycielach.

| Nazwa atrybutu | Typ         | Opis/Uwagi                              |
| -------------- | ----------- | --------------------------------------- |
| teacher_id     | INT         | Klucz główny, identyfikator nauczyciela |
| first_name     | VARCHAR(64) | Wymagane, imię nauczyciela              |
| last_name      | VARCHAR(64) | Wymagane, nazwisko nauczyciela          |

---

### Tabela teacher_salaries

- **Opis**: Tabela przechowująca informacje o wynagrodzeniach nauczycieli.

| Nazwa atrybutu | Typ           | Opis/Uwagi                                          |
| -------------- | ------------- | --------------------------------------------------- |
| salary_id      | INT           | Klucz główny, identyfikator wynagrodzenia           |
| teacher_id     | INT           | Wymagane, klucz obcy do tabeli teachers(teacher_id) |
| amount         | DECIMAL(10,2) | Wymagane, kwota wynagrodzenia                       |
| payment_date   | DATE          | Wymagane, data wypłaty wynagrodzenia                |

---

### Tabela subjects

- **Opis**: Tabela przechowująca informacje o przedmiotach.

| Nazwa atrybutu | Typ         | Opis/Uwagi                             |
| -------------- | ----------- | -------------------------------------- |
| subject_id     | INT         | Klucz główny, identyfikator przedmiotu |
| name           | VARCHAR(64) | Wymagane, unikalna nazwa przedmiotu    |

---

### Tabela group_subjects

- **Opis**: Tabela przechowująca przypisania grup do przedmiotów i nauczycieli.

| Nazwa atrybutu   | Typ | Opis/Uwagi                                          |
| ---------------- | --- | --------------------------------------------------- |
| group_subject_id | INT | Klucz główny, identyfikator przypisania             |
| group_id         | INT | Wymagane, klucz obcy do tabeli groups(group_id)     |
| subject_id       | INT | Wymagane, klucz obcy do tabeli subjects(subject_id) |
| teacher_id       | INT | Wymagane, klucz obcy do tabeli teachers(teacher_id) |

---

### Tabela group_subject_schedule

- **Opis**: Tabela przechowująca harmonogram przypisań grup do sal.

| Nazwa atrybutu   | Typ | Opis/Uwagi                                                      |
| ---------------- | --- | --------------------------------------------------------------- |
| group_subject_id | INT | Wymagane, klucz obcy do tabeli group_subjects(group_subject_id) |
| assignment_id    | INT | Wymagane, klucz obcy do tabeli room_assignments(assignment_id)  |

### d. normalizację schematu do postaci normalnej (3NF)

#### 1. Tabela `rooms`:

- Posiada klucz główny room_id.
- Kolumna name jest unikalna i niekluczowa.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 2. Tabela `room_assignments`:

- Klucz główny to assignment_id.
- Atrybuty start_time i end_time są zależne tylko od assignment_id.
- Spełnia 3NF, brak zależności przechodnich.

#### 3. Tabela `courses`:

- Klucz główny to course_id.
- Kolumny name, start_date, end_date, price są bezpośrednio zależne od course_id.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 4. Tabela `courses_schedule`:

- Łączy course_id z assignment_id.
- Każdy wpis w tej tabeli odnosi się do konkretnej lekcji kursu w sali.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 5. Tabela `groups`:

- Klucz główny to group_id.
- Kolumna name jest unikalna i niekluczowa.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 6. Tabela `students`:

- Klucz główny to student_id.
- first_name, last_name, group_id są bezpośrednio zależne od student_id.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 7. Tabela `student_courses`:

- Klucze obce student_id i course_id.
- payment_date jest zależne od student_id i course_id.
- Uwaga: Istnieje ograniczenie UNIQUE dla student_id, co może oznaczać, że student może być zapisany tylko na jeden kurs.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 8. Tabela `teachers`:

- Klucz główny to teacher_id.
- first_name, last_name są bezpośrednio zależne od teacher_id.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 9. Tabela `teacher_salaries`:

- Klucz główny to salary_id.
- teacher_id, amount, payment_date są bezpośrednio zależne od salary_id.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 10. Tabela `subjects`:

- Klucz główny to subject_id.
- Kolumna name jest unikalna i niekluczowa.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 11. Tabela `group_subjects`:

- Łączy group_id, subject_id, teacher_id.
- Spełnia 3NF, nie ma zależności przechodnich.

#### 12. Tabela `group_subject_schedule`:

- Łączy group_subject_id z assignment_id.
- Spełnia 3NF, nie ma zależności przechodnich.

### e. definicję kuczy obcych zapewniających integralność danych

#### Tabela `room_assignments`:

```sql
CREATE TABLE room_assignments (
    assignment_id INT IDENTITY PRIMARY KEY,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);
```

- Klucz obcy `room_id` w tabeli **room_assignments** odnosi się do klucza głównego `room_id` w tabeli **rooms**. Zapewnia to, że nie można dodać zadania przypisania do nieistniejącego pokoju.

---

#### Tabela `courses_schedule`:

```sql
CREATE TABLE courses_schedule (
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id)
);

```

- Klucze obce `course_id` i `assignment_id` w tabeli **courses_schedule** odnoszą się odpowiednio do klucza głównego `course_id` w tabeli **courses** oraz klucza głównego `assignment_id` w tabeli **room_assignments**. To zapewnia, że każdy wpis w **courses_schedule** musi odnosić się do istniejącego kursu i przypisania pokoju.

---

#### Tabela `student_courses`:

```sql
CREATE TABLE student_courses (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
```

- Klucze obce `student_id` i `course_id` w tabeli **student_courses** odnoszą się odpowiednio do klucza głównego `student_id` w tabeli **students** oraz klucza głównego `course_id` w tabeli **courses**. Zapewnia to, że każda rejestracja studenta na kurs musi odnosić się do istniejącego studenta i istniejącego kursu.

---

#### Tabela `teacher_salaries`:

```sql
CREATE TABLE teacher_salaries (
    salary_id INT IDENTITY PRIMARY KEY,
    teacher_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);
```

- Klucz obcy `teacher_id` w tabeli **teacher_salaries** odnosi się do klucza głównego `teacher_id` w tabeli **teachers**. Zapewnia to, że każda wypłata wynagrodzenia jest powiązana z istniejącym nauczycielem.

---

#### Tabela `group_subjects`:

```sql
CREATE TABLE group_subjects (
    group_subject_id INT IDENTITY PRIMARY KEY,
    group_id INT NOT NULL,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

```

- Klucze obce `group_id`, `subject_id` i `teacher_id` w tabeli **group_subjects** odnoszą się odpowiednio do klucza głównego `group_id` w tabeli **groups**, klucza głównego `subject_id` w tabeli **subjects** oraz klucza głównego `teacher_id` w tabeli **teachers**. Zapewnia to, że każdy wpis w **group_subjects** jest powiązany z istniejącą grupą, przedmiotem i nauczycielem.

---

#### Tabela `group_subject_schedule`:

```sql
CREATE TABLE group_subject_schedule (
    group_subject_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (group_subject_id) REFERENCES group_subjects(group_subject_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id)
);
```

- Klucze obce `group_subject_id` i `assignment_id` w tabeli **group_subject_schedule** odnoszą się odpowiednio do klucza głównego `group_subject_id` w tabeli **group_subjects** oraz klucza głównego `assignment_id` w tabeli **room_assignments**. Zapewnia to, że każde przypisanie przedmiotu do grupy jest powiązane z istniejącym przypisaniem pokoju.

### f. implementację schematu danych z wykorzystaniem dowolnej technologii bazy danych

#### Plik ddl.sql

```sql
CREATE TABLE rooms (
    room_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE room_assignments (
    assignment_id INT IDENTITY PRIMARY KEY,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
);

CREATE TABLE courses (
    course_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
);

CREATE TABLE courses_schedule (
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

CREATE TABLE groups (
    group_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE students (
    student_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
);

CREATE TABLE student_courses (
    student_id INT NOT NULL UNIQUE,
    course_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
);

CREATE TABLE teachers (
    teacher_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
);

CREATE TABLE teacher_salaries (
    salary_id INT IDENTITY PRIMARY KEY,
    teacher_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE subjects (
    subject_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE group_subjects (
    group_subject_id INT IDENTITY PRIMARY KEY,
    group_id INT NOT NULL,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE group_subject_schedule (
    group_subject_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (group_subject_id) REFERENCES group_subjects(group_subject_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

```

#### Plik triggers.sql

```sql
CREATE TRIGGER room_assignment_overlap
ON room_assignments
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM room_assignments
        INNER JOIN inserted
        ON room_assignments.room_id = inserted.room_id
        WHERE inserted.start_time < room_assignments.end_time
        AND inserted.end_time > room_assignments.start_time
    )
    BEGIN
        RAISERROR ('Room assignment overlaps with existing assignment', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO room_assignments (room_id, start_time, end_time)
        SELECT room_id, start_time, end_time FROM inserted;
    END
END;

declare @room_id int;
insert into rooms (name) values ('Room 101');
set @room_id = SCOPE_IDENTITY();

insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 08:00:00', '2024-06-01 10:00:00');

-- trying to create overlaping room assignment
insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 09:00:00', '2024-06-01 11:00:00');



CREATE TRIGGER course_payment_availability
ON student_courses
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM inserted
        INNER JOIN courses
        ON inserted.course_id = courses.course_id
        WHERE GETDATE() < courses.start_date
    )
    BEGIN
        RAISERROR ('Course is not available', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO student_courses
        SELECT * FROM inserted;
    END
END;

declare @group_id int;
declare @student_id int;
declare @course_id int;

insert into groups (name) values ('Group 1');
set @group_id = SCOPE_IDENTITY();

insert into students (first_name, last_name, group_id) values ('John', 'Doe', @group_id);
set @student_id = SCOPE_IDENTITY();

insert into courses (name, start_date, end_date, price) values ('Course 1', '2024-06-01', '2024-06-30', 1000);
set @course_id = SCOPE_IDENTITY();

-- trying to assign course to student before course start date

insert into student_courses (student_id, course_id, payment_date) values (@student_id, @course_id, GETDATE());

```

#### Plik drop.sql

```sql
DROP TABLE IF EXISTS group_subject_schedule;
DROP TABLE IF EXISTS group_subjects;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teacher_salaries;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses_schedule;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS room_assignments;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS rooms;

DROP TRIGGER IF EXISTS room_assignment_overlap;
DROP TRIGGER IF EXISTS course_payment_availability;
```

### g. dokumentacje w postaci diagramu obejmującego komplet użytych elementów schematu sporządzonego narzędziem dostępnym w ramach wykorzystanej technologii

<img src="https://i.imgur.com/xs6bidh.png" />

### h. kod SQL służący do wygenerowania opracowanego schematu bazy danych

#### Plik ddl.sql

```sql
CREATE TABLE rooms (
    room_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE room_assignments (
    assignment_id INT IDENTITY PRIMARY KEY,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
);

CREATE TABLE courses (
    course_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
);

CREATE TABLE courses_schedule (
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

CREATE TABLE groups (
    group_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE students (
    student_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
);

CREATE TABLE student_courses (
    student_id INT NOT NULL UNIQUE,
    course_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
);

CREATE TABLE teachers (
    teacher_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
);

CREATE TABLE teacher_salaries (
    salary_id INT IDENTITY PRIMARY KEY,
    teacher_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE subjects (
    subject_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE group_subjects (
    group_subject_id INT IDENTITY PRIMARY KEY,
    group_id INT NOT NULL,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE group_subject_schedule (
    group_subject_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (group_subject_id) REFERENCES group_subjects(group_subject_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

```

#### Plik triggers.sql

```sql
CREATE TRIGGER room_assignment_overlap
ON room_assignments
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM room_assignments
        INNER JOIN inserted
        ON room_assignments.room_id = inserted.room_id
        WHERE inserted.start_time < room_assignments.end_time
        AND inserted.end_time > room_assignments.start_time
    )
    BEGIN
        RAISERROR ('Room assignment overlaps with existing assignment', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO room_assignments (room_id, start_time, end_time)
        SELECT room_id, start_time, end_time FROM inserted;
    END
END;

declare @room_id int;
insert into rooms (name) values ('Room 101');
set @room_id = SCOPE_IDENTITY();

insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 08:00:00', '2024-06-01 10:00:00');

-- trying to create overlaping room assignment
insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 09:00:00', '2024-06-01 11:00:00');



CREATE TRIGGER course_payment_availability
ON student_courses
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM inserted
        INNER JOIN courses
        ON inserted.course_id = courses.course_id
        WHERE GETDATE() < courses.start_date
    )
    BEGIN
        RAISERROR ('Course is not available', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO student_courses
        SELECT * FROM inserted;
    END
END;

declare @group_id int;
declare @student_id int;
declare @course_id int;

insert into groups (name) values ('Group 1');
set @group_id = SCOPE_IDENTITY();

insert into students (first_name, last_name, group_id) values ('John', 'Doe', @group_id);
set @student_id = SCOPE_IDENTITY();

insert into courses (name, start_date, end_date, price) values ('Course 1', '2024-06-01', '2024-06-30', 1000);
set @course_id = SCOPE_IDENTITY();

-- trying to assign course to student before course start date

insert into student_courses (student_id, course_id, payment_date) values (@student_id, @course_id, GETDATE());

```

#### Plik drop.sql

```sql
DROP TABLE IF EXISTS group_subject_schedule;
DROP TABLE IF EXISTS group_subjects;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teacher_salaries;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses_schedule;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS room_assignments;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS rooms;

DROP TRIGGER IF EXISTS room_assignment_overlap;
DROP TRIGGER IF EXISTS course_payment_availability;
```

### i. kod SQL służący do wprowadzenia przykładowych danych do poszczególnych tabel systemu.

```sql
INSERT INTO rooms (room_id, name)
VALUES
    (1, 'Room A'),
    (2, 'Room B'),
    (3, 'Room C');

INSERT INTO room_assignments (assignment_id, room_id, start_time, end_time)
VALUES
    (1, 1, '2024-06-01 09:00:00', '2024-06-01 11:00:00'),
    (2, 1, '2024-06-02 14:00:00', '2024-06-02 16:00:00'),
    (3, 2, '2024-06-01 10:00:00', '2024-06-01 12:00:00'),
    (4, 2, '2024-06-02 13:00:00', '2024-06-02 15:00:00'),
    (5, 3, '2024-06-01 11:00:00', '2024-06-01 13:00:00'),
    (6, 3, '2024-06-02 12:00:00', '2024-06-02 14:00:00');


INSERT INTO courses (course_id, name, start_date, end_date, price)
VALUES
    (1, 'Mathematics 101', '2024-07-01', '2024-08-30', 500.00),
    (2, 'Physics 201', '2024-07-15', '2024-09-15', 600.00),
    (3, 'History 301', '2024-08-01', '2024-09-30', 450.00);


INSERT INTO courses_schedule (course_id, assignment_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6);

INSERT INTO groups (group_id, name)
VALUES
    (1, 'Group 1'),
    (2, 'Group 2'),
    (3, 'Group 3');


INSERT INTO students (student_id, first_name, last_name, group_id)
VALUES
    (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Michael', 'Johnson', 3),
    (4, 'Emily', 'Brown', 1),
    (5, 'William', 'Davis', 2);


INSERT INTO student_courses (student_id, course_id, payment_date)
VALUES
    (1, 1, '2024-06-01'),
    (2, 1, '2024-06-02'),
    (3, 2, '2024-06-03'),
    (4, 2, '2024-06-04'),
    (5, 3, '2024-06-05');


INSERT INTO teachers (teacher_id, first_name, last_name)
VALUES
    (1, 'David', 'Wilson'),
    (2, 'Sarah', 'Anderson'),
    (3, 'James', 'Martinez');


INSERT INTO teacher_salaries (salary_id, teacher_id, amount, payment_date)
VALUES
    (1, 1, 2500.00, '2024-06-15'),
    (2, 2, 2800.00, '2024-06-15'),
    (3, 3, 2700.00, '2024-06-15');


INSERT INTO subjects (subject_id, name)
VALUES
    (1, 'Mathematics'),
    (2, 'Physics'),
    (3, 'History');


INSERT INTO group_subjects (group_subject_id, group_id, subject_id, teacher_id)
VALUES
    (1, 1, 1, 1),
    (2, 2, 2, 2),
    (3, 3, 3, 3),
    (4, 1, 2, 1),
    (5, 2, 3, 2),
    (6, 3, 1, 3);


INSERT INTO group_subject_schedule (group_subject_id, assignment_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);
```

Uwaga:

1. Zaproponowane w wykazie projektów tabele (ich nazwy) mają wyłącznie charakter informacyjny (przykładowy). Traktować je należy jako wskazówkę, nie jako wymaganie.
2. Kompletny projekt w postaci pojedynczego pliku w formacie pdf należy umieścić w Sake nie później niż w dniu 28 czerwca br. do godz. 23:59.
3. Sprawdzaniu i ocenie podlegać będą wyłącznie projekty prawidłowo udokumentowane i umieszczone w Sake (przesłane mailem, przy pomocy wiadomości w Suszi .- bo akurat w ostatniej chwili miałem kłopot z internetem - nie będą uwzględniane).
