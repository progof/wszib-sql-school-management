# Wszib SQL School Management

**Autorzy:**

- [Oleh Ortynskyi](https://github.com/progof)
- [Artem Melnyk](https://github.com/MellKam)

## 1. Wykaz tematów umieszczono w 'Materiałach dydaktycznych' (w tym miejscu nie ma możliwości dołączenia pliku)

```
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

```
Tabele główne:

Pracownicy (employees): Zawiera informacje o pracownikach szkoły, takie jak identyfikator, imię, nazwisko oraz przypisane zajęcia.
Uczniowie (students): Przechowuje dane o uczniach, w tym identyfikator, imię, nazwisko, sekcję i klasę.
Relacje między tabelami:

Nauczyciele-Przedmioty (teachers_subjects): Określa powiązania między nauczycielami a przypisanymi do nich przedmiotami.
Opłaty (fees): Tabela przechowująca informacje o opłatach dla uczniów, takie jak identyfikator ucznia, kwota opłaty i termin płatności.
Wynagrodzenia (salaries): Przechowuje dane dotyczące wynagrodzeń nauczycieli, zawierające identyfikator pracownika, kwotę wynagrodzenia i datę wypłaty.
Dodatkowe tabele:

Sekcje (sections): Lista sekcji dostępnych w szkole, z której uczniowie są przydzielani do odpowiednich klas.
Przedmioty (subjects): Lista przedmiotów oferowanych w szkole, z których nauczyciele prowadzą zajęcia.
Pomieszczenia (rooms): Informacje o salach lekcyjnych i laboratoriach, które są przydzielane do zajęć z uwzględnieniem harmonogramu.
Założenia funkcjonalne:

Zarządzanie harmonogramem zajęć (tabela classes) obejmuje przypisanie sal, nauczycieli oraz czasu zajęć, zabezpieczając przed kolizjami czasowymi w tej samej sali.
Uczniowie mogą być przypisani tylko do jednej sekcji, co jest kontrolowane przez unikalność danych w warstwie aplikacyjnej.
System umożliwia kontrolę nad opłatami uczniów (tabela fees) i wynagrodzeniami nauczycieli (tabela salaries), zapewniając dokładność i terminowość płatności.
```

### b. dokumentację przypadków użycia (np. diagramy UML use case):

System powinien umożliwić:

#### Zarządzanie pracownikami:

- Dodawanie pracownika: Administrator może dodać nowego pracownika do systemu, wprowadzając jego dane osobowe oraz informacje o przypisanych zajęciach.
- Edycja pracownika: Administrator może edytować dane istniejącego pracownika, takie jak imię, nazwisko oraz przypisane zajęcia.
- Usuwanie pracownika: Administrator może usunąć pracownika ze systemu.

#### Zarządzanie uczniami:

- Dodawanie ucznia: Administrator może dodać nowego ucznia do systemu, wprowadzając jego dane osobowe oraz przypisując do odpowiedniej sekcji i klasy.
- Edycja ucznia: Administrator może edytować dane istniejącego ucznia, takie jak imię, nazwisko, sekcja i klasa.
- Usuwanie ucznia: Administrator może usunąć ucznia ze systemu.

#### Zarządzanie sekcjami:

- Dodawanie sekcji: Administrator może dodać nową sekcję do systemu, określając jej nazwę.
- Edycja sekcji: Administrator może zmienić nazwę istniejącej sekcji.
- Usuwanie sekcji: Administrator może usunąć sekcję z systemu, o ile nie ma przypisanych do niej żadnych uczniów.

#### Zarządzanie przedmiotami:

- Dodawanie przedmiotu: Administrator może dodać nowy przedmiot do systemu, podając jego nazwę.
- Edycja przedmiotu: Administrator może zmienić nazwę istniejącego przedmiotu.
- Usuwanie przedmiotu: Administrator może usunąć przedmiot z systemu, o ile nie jest przypisany do żadnego nauczyciela.

#### Zarządzanie nauczycielami i ich przypisanymi przedmiotami:

- Przypisanie nauczyciela do przedmiotu: Administrator może przypisać nauczyciela do prowadzenia określonego przedmiotu.
- Edycja przypisania nauczyciela do przedmiotu: Administrator może zmienić przypisanie nauczyciela do przedmiotu.
- Usuwanie przypisania nauczyciela do przedmiotu: Administrator może usunąć przypisanie nauczyciela do przedmiotu.

#### Zarządzanie opłatami uczniów:

- Dodawanie opłaty: Administrator może dodać nową opłatę dla konkretnego ucznia, określając kwotę oraz termin płatności.
- Edycja opłaty: Administrator może zmienić kwotę lub termin płatności istniejącej opłaty.
- Usuwanie opłaty: Administrator może usunąć opłatę.

#### Zarządzanie wynagrodzeniami nauczycieli:

- Dodawanie wynagrodzenia: Administrator może dodać nowe wynagrodzenie dla konkretnego nauczyciela, wprowadzając kwotę oraz datę wypłaty.
- Edycja wynagrodzenia: Administrator może zmienić kwotę lub datę wypłaty istniejącego wynagrodzenia.
- Usuwanie wynagrodzenia: Administrator może usunąć wynagrodzenie.

#### Zarządzanie zajęciami i przydziałem sal:

- Przypisanie sali do zajęć: Administrator może przypisać konkretne zajęcia do określonej sali w harmonogramie.
- Edycja przypisania sali do zajęć: Administrator może zmienić przypisanie sali dla istniejących zajęć.
- Usuwanie przypisania sali do zajęć: Administrator może usunąć przypisanie sali dla zajęć.

### c. dokumentację (modelu fizycznego) schematu bazy danych z wykorzystaniem dowolnej notacji, z wyraźnym określeniem wszelkich niezbędnych kluczy głównych

## Model Fizyczny Schematu Bazy Danych

### Tabela `employees`

- **Opis**: Tabela przechowująca informacje o pracownikach szkoły.

| Nazwa atrybutu | Typ          | Opis/Uwagi                             |
| -------------- | ------------ | -------------------------------------- |
| employee_id    | INT          | Klucz główny, identyfikator pracownika |
| first_name     | VARCHAR(50)  | Imię pracownika, wymagane              |
| last_name      | VARCHAR(50)  | Nazwisko pracownika, wymagane          |
| subjects       | VARCHAR(100) | Zajęcia prowadzone przez pracownika    |

### Tabela `students`

- **Opis**: Tabela przechowująca informacje o uczniach szkoły.

| Nazwa atrybutu | Typ         | Opis/Uwagi                         |
| -------------- | ----------- | ---------------------------------- |
| student_id     | INT         | Klucz główny, identyfikator ucznia |
| first_name     | VARCHAR(50) | Imię ucznia, wymagane              |
| last_name      | VARCHAR(50) | Nazwisko ucznia, wymagane          |
| section        | VARCHAR(50) | Sekcja, do której uczęszcza uczeń  |
| class          | VARCHAR(10) | Klasa, do której uczęszcza uczeń   |

### Tabela `sections`

- **Opis**: Tabela przechowująca informacje o sekcjach w szkole.

| Nazwa atrybutu | Typ         | Opis/Uwagi                         |
| -------------- | ----------- | ---------------------------------- |
| section_id     | INT         | Klucz główny, identyfikator sekcji |
| name           | VARCHAR(50) | Nazwa sekcji                       |

### Tabela `subjects`

- **Opis**: Tabela przechowująca informacje o przedmiotach nauczania.

| Nazwa atrybutu | Typ         | Opis/Uwagi                             |
| -------------- | ----------- | -------------------------------------- |
| subject_id     | INT         | Klucz główny, identyfikator przedmiotu |
| name           | VARCHAR(50) | Nazwa przedmiotu                       |

### Tabela `teachers_subjects`

- **Opis**: Tabela łącznikowa przechowująca informacje o przypisaniach nauczycieli do przedmiotów.

| Nazwa atrybutu | Typ                      | Opis/Uwagi                                       |
| -------------- | ------------------------ | ------------------------------------------------ |
| teacher_id     | INT                      | Klucz obcy do `employees.employee_id`            |
| subject_id     | INT                      | Klucz obcy do `subjects.subject_id`              |
| PRIMARY KEY    | (teacher_id, subject_id) | Klucz główny: połączenie teacher_id i subject_id |

### Tabela `fees`

- **Opis**: Tabela przechowująca informacje o opłatach dla uczniów.

| Nazwa atrybutu | Typ           | Opis/Uwagi                          |
| -------------- | ------------- | ----------------------------------- |
| fee_id         | INT           | Klucz główny, identyfikator opłaty  |
| student_id     | INT           | Klucz obcy do `students.student_id` |
| amount         | DECIMAL(10,2) | Kwota opłaty                        |
| due_date       | DATE          | Termin płatności                    |

### Tabela `salaries`

- **Opis**: Tabela przechowująca informacje o wynagrodzeniach pracowników.

| Nazwa atrybutu | Typ           | Opis/Uwagi                                |
| -------------- | ------------- | ----------------------------------------- |
| salary_id      | INT           | Klucz główny, identyfikator wynagrodzenia |
| employee_id    | INT           | Klucz obcy do `employees.employee_id`     |
| amount         | DECIMAL(10,2) | Kwota wynagrodzenia                       |
| payment_date   | DATE          | Data wypłaty wynagrodzenia                |

### Tabela `rooms`

- **Opis**: Tabela przechowująca informacje o salach lekcyjnych.

| Nazwa atrybutu | Typ         | Opis/Uwagi                       |
| -------------- | ----------- | -------------------------------- |
| room_id        | INT         | Klucz główny, identyfikator sali |
| name           | VARCHAR(50) | Nazwa sali                       |

### Tabela `classes`

- **Opis**: Tabela przechowująca informacje o planie zajęć.

| Nazwa atrybutu | Typ       | Opis/Uwagi                            |
| -------------- | --------- | ------------------------------------- |
| class_id       | INT       | Klucz główny, identyfikator zajęć     |
| subject_id     | INT       | Klucz obcy do `subjects.subject_id`   |
| teacher_id     | INT       | Klucz obcy do `employees.employee_id` |
| room_id        | INT       | Klucz obcy do `rooms.room_id`         |
| schedule       | TIMESTAMP | Harmonogram zajęć                     |

### d. normalizację schematu do postaci normalnej (3NF)

### Tabela `employees`

| Nazwa atrybutu | Typ          | Opis/Uwagi                             |
| -------------- | ------------ | -------------------------------------- |
| employee_id    | INT          | Klucz główny, identyfikator pracownika |
| first_name     | VARCHAR(50)  | Imię pracownika, wymagane              |
| last_name      | VARCHAR(50)  | Nazwisko pracownika, wymagane          |
| subjects       | VARCHAR(100) | Zajęcia prowadzone przez pracownika    |

- Normalizacja do 3NF: Tabela employees jest w postaci 3NF. Nie zawiera powtarzających się grup atrybutów ani wielowartościowych zależności funkcyjnych.

---

### Tabela `students`

| Nazwa atrybutu | Typ         | Opis/Uwagi                         |
| -------------- | ----------- | ---------------------------------- |
| student_id     | INT         | Klucz główny, identyfikator ucznia |
| first_name     | VARCHAR(50) | Imię ucznia, wymagane              |
| last_name      | VARCHAR(50) | Nazwisko ucznia, wymagane          |
| section        | VARCHAR(50) | Sekcja, do której uczęszcza uczeń  |
| class          | VARCHAR(10) | Klasa, do której uczęszcza uczeń   |

- Normalizacja do 3NF: Tabela `students` jest w postaci 3NF. Nie zawiera powtarzających się grup atrybutów ani wielowartościowych zależności funkcyjnych.

---

### Tabela `sections`

| Nazwa atrybutu | Typ         | Opis/Uwagi                         |
| -------------- | ----------- | ---------------------------------- |
| section_id     | INT         | Klucz główny, identyfikator sekcji |
| name           | VARCHAR(50) | Nazwa sekcji                       |

- Normalizacja do 3NF: Tabela `sections` jest w postaci 3NF. Zawiera tylko jeden klucz główny i nie posiada powtarzających się grup atrybutów.

---

### Tabela `subjects`

| Nazwa atrybutu | Typ         | Opis/Uwagi                             |
| -------------- | ----------- | -------------------------------------- |
| subject_id     | INT         | Klucz główny, identyfikator przedmiotu |
| name           | VARCHAR(50) | Nazwa przedmiotu                       |

- Normalizacja do 3NF: Tabela `subjects` jest w postaci 3NF. Zawiera tylko jeden klucz główny i nie posiada powtarzających się grup atrybutów.

---

### Tabela `teachers_subjects`

| Nazwa atrybutu | Typ                      | Opis/Uwagi                                       |
| -------------- | ------------------------ | ------------------------------------------------ |
| teacher_id     | INT                      | Klucz obcy do employees.employee_id              |
| subject_id     | INT                      | Klucz obcy do subjects.subject_id                |
| PRIMARY KEY    | (teacher_id, subject_id) | Klucz główny: połączenie teacher_id i subject_id |

- Normalizacja do 3NF: Tabela `teachers_subjects` jest w postaci 3NF. Posiada klucz główny składający się z dwóch kluczy obcych, nie zawiera powtarzających się grup atrybutów.

---

### Tabela `fees`

| Nazwa atrybutu | Typ           | Opis/Uwagi                         |
| -------------- | ------------- | ---------------------------------- |
| fee_id         | INT           | Klucz główny, identyfikator opłaty |
| student_id     | INT           | Klucz obcy do students.student_id  |
| amount         | DECIMAL(10,2) | Kwota opłaty                       |
| due_date       | DATE          | Termin płatności                   |

- Normalizacja do 3NF: Tabela `fees` jest w postaci 3NF. Posiada klucz główny oraz klucz obcy, nie zawiera powtarzających się grup atrybutów.

---

### Tabela `salaries`

| Nazwa atrybutu | Typ           | Opis/Uwagi                                |
| -------------- | ------------- | ----------------------------------------- |
| salary_id      | INT           | Klucz główny, identyfikator wynagrodzenia |
| employee_id    | INT           | Klucz obcy do employees.employee_id       |
| amount         | DECIMAL(10,2) | Kwota wynagrodzenia                       |
| payment_date   | DATE          | Data wypłaty wynagrodzenia                |

- Normalizacja do 3NF: Tabela `salaries` jest w postaci 3NF. Posiada klucz główny oraz klucz obcy, nie zawiera powtarzających się grup atrybutów.

---

### Tabela `rooms`

| Nazwa atrybutu | Typ         | Opis/Uwagi                       |
| -------------- | ----------- | -------------------------------- |
| room_id        | INT         | Klucz główny, identyfikator sali |
| name           | VARCHAR(50) | Nazwa sali                       |

- Normalizacja do 3NF: Tabela `rooms` jest w postaci 3NF. Zawiera tylko jeden klucz główny i nie posiada powtarzających się grup atrybutów.

---

### Tabela `classes`

| Nazwa atrybutu | Typ       | Opis/Uwagi                          |
| -------------- | --------- | ----------------------------------- |
| class_id       | INT       | Klucz główny, identyfikator zajęć   |
| subject_id     | INT       | Klucz obcy do subjects.subject_id   |
| teacher_id     | INT       | Klucz obcy do employees.employee_id |
| room_id        | INT       | Klucz obcy do rooms.room_id         |
| schedule       | TIMESTAMP | Harmonogram zajęć                   |

- Normalizacja do 3NF: Tabela `classes` jest w postaci 3NF. Posiada klucz główny oraz klucze obce, nie zawiera powtarzających się grup atrybutów.

---

### e. definicję kuczy obcych zapewniających integralność danych

#### Klucze obce w bazie danych

#### Tabela `employees`

- `employee_id` (INT): Klucz główny, identyfikator pracownika

#### Tabela `students`

- `student_id` (INT): Klucz główny, identyfikator ucznia

#### Tabela `teachers_subjects`

- `teacher_id` (INT): Klucz obcy do `employees.employee_id`

  - Opis: Klucz obcy łączący tabelę `teachers_subjects` z tabelą `employees`, wskazujący na identyfikator pracownika (nauczyciela).

- `subject_id` (INT): Klucz obcy do `subjects.subject_id`
  - Opis: Klucz obcy łączący tabelę `teachers_subjects` z tabelą `subjects`, wskazujący na identyfikator przedmiotu.

### f. implementację schematu danych z wykorzystaniem dowolnej technologii bazy danych

### g. dokumentacje w postaci diagramu obejmującego komplet użytych elementów schematu sporządzonego narzędziem dostępnym w ramach wykorzystanej technologii

<img src="https://i.imgur.com/yJeHSY3.png" />

### h. kod SQL służący do wygenerowania opracowanego schematu bazy danych

### i. kod SQL służący do wprowadzenia przykładowych danych do poszczególnych tabel systemu.

```
INSERT INTO employees (employee_id, first_name, last_name, subjects)
VALUES
    (1, 'John', 'Doe', 'Mathematics'),
    (2, 'Jane', 'Smith', 'Science'),
    (3, 'Michael', 'Johnson', 'History'),
    (4, 'Emily', 'Williams', 'Literature');

INSERT INTO students (student_id, first_name, last_name, section, class)
VALUES
    (1, 'Mark', 'Brown', 'A', '10A'),
    (2, 'Sarah', 'Wilson', 'B', '11B'),
    (3, 'David', 'Lee', 'A', '9A'),
    (4, 'Anna', 'Moore', 'C', '12C');

INSERT INTO sections (section_id, name)
VALUES
    (1, 'A'),
    (2, 'B'),
    (3, 'C');

INSERT INTO subjects (subject_id, name)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History'),
    (4, 'Literature');

INSERT INTO teachers_subjects (teacher_id, subject_id)
VALUES
    (1, 1), -- John Doe teaches Mathematics
    (2, 2), -- Jane Smith teaches Science
    (3, 3), -- Michael Johnson teaches History
    (4, 4); -- Emily Williams teaches Literature

INSERT INTO fees (fee_id, student_id, amount, due_date)
VALUES
    (1, 1, 500.00, '2024-06-30'),
    (2, 2, 600.00, '2024-07-15'),
    (3, 3, 550.00, '2024-07-10'),
    (4, 4, 700.00, '2024-07-05');

INSERT INTO salaries (salary_id, employee_id, amount, payment_date)
VALUES
    (1, 1, 4000.00, '2024-06-25'),
    (2, 2, 4500.00, '2024-06-30'),
    (3, 3, 4200.00, '2024-06-28'),
    (4, 4, 4300.00, '2024-06-27');

INSERT INTO rooms (room_id, name)
VALUES
    (1, 'Room 101'),
    (2, 'Room 102'),
    (3, 'Room 103');

INSERT INTO classes (class_id, subject_id, teacher_id, room_id, schedule)
VALUES
    (1, 1, 1, 1, '2024-07-01 08:00:00'), -- Mathematics class by John Doe in Room 101
    (2, 2, 2, 2, '2024-07-02 09:30:00'), -- Science class by Jane Smith in Room 102
    (3, 3, 3, 3, '2024-07-03 10:45:00'), -- History class by Michael Johnson in Room 103
    (4, 4, 4, 1, '2024-07-04 12:00:00'); -- Literature class by Emily Williams in Room 101

```

Uwaga:

1. Zaproponowane w wykazie projektów tabele (ich nazwy) mają wyłącznie charakter informacyjny (przykładowy). Traktować je należy jako wskazówkę, nie jako wymaganie.
2. Kompletny projekt w postaci pojedynczego pliku w formacie pdf należy umieścić w Sake nie później niż w dniu 28 czerwca br. do godz. 23:59.
3. Sprawdzaniu i ocenie podlegać będą wyłącznie projekty prawidłowo udokumentowane i umieszczone w Sake (przesłane mailem, przy pomocy wiadomości w Suszi .- bo akurat w ostatniej chwili miałem kłopot z internetem - nie będą uwzględniane).
