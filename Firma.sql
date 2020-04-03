CREATE DATABASE Firma;

CREATE TABLE pracownicy(
ID_pracownika SMALLINT PRIMARY KEY,
imie VARCHAR(25) NOT NULL,
nazwisko VARCHAR(30) NOT NULL,
adres VARCHAR(50) NOT NULL,
telefon MEDIUMINT);

CREATE TABLE godziny(
ID_godziny SMALLINT PRIMARY KEY,
data DATE,
liczba_godzin SMALLINT NOT NULL,
ID_pracownika SMALLINT );

CREATE TABLE pensje(
ID_pensji SMALLINT PRIMARY KEY,
stanowisko VARCHAR(40) NOT NULL,
kwota INT,
ID_premii SMALLINT );

CREATE TABLE premie(
ID_premii SMALLINT PRIMARY KEY,
rodzaj VARCHAR(30),
kwota INT);

ALTER TABLE pensje
ADD FOREIGN KEY (ID_premii) REFERENCES premie(ID_premii);
ALTER TABLE godziny
ADD FOREIGN KEY (ID_pracownika) REFERENCES pracownicy(ID_pracownika);

INSERT INTO pracownicy VALUES(1,'Kazimierz', 'Nowak', 'Myślenice', 652877217);
INSERT INTO pracownicy VALUES(2, 'Alicja', 'Wójt', 'Dobczyce', 721336788);
INSERT INTO pracownicy VALUES(3, 'Maciej', 'Ząbek', 'Dobczyce', 635528921);
INSERT INTO pracownicy VALUES(4, 'Krzysztof', 'Krawczyk', 'Kraków', 888999777);
INSERT INTO pracownicy VALUES(5, 'Andrzej', 'Dąb', 'Myślenice', 633267123);
INSERT INTO pracownicy VALUES(6, 'Małgorzata', 'Putyra', Skawina, 623982402);
INSERT INTO pracownicy VALUES(7, 'Klaudia', 'Lama', 'Kraków', 721283779);
INSERT INTO pracownicy VALUES(8, 'Mateusz', 'Kucyk', 'Sułkowice', 502982115);
INSERT INTO pracownicy VALUES(9, 'Dominik', 'Banar', 'Skawina', 503867354);
INSERT INTO pracownicy VALUES(10, 'Kinga', 'Marek', 'Dobczyce', 724523901);
COMMIT;

INSERT INTO godziny VALUES(1,'31-03-2020', 158, 1);
INSERT INTO godziny VALUES(2, '31-03-2020', 142, 2);
INSERT INTO godziny VALUES(3, '31-03-2020', 140, 3);
INSERT INTO godziny VALUES(4, '31-03-2020', 152, 4);
INSERT INTO godziny VALUES(5, '31-03-2020', 152, 5);
INSERT INTO godziny VALUES(6, '31-03-2020', 140, 6);
INSERT INTO godziny VALUES(7, '31-03-2020', 132, 7);
INSERT INTO godziny VALUES(8, '31-03-2020', 146, 8);
INSERT INTO godziny VALUES(9, '31-03-2020', 160, 9);
INSERT INTO godziny VALUES(10, '31-03-2020', 140, 10);

INSERT INTO pensje VALUES(1,'szef', 10000, 1);
INSERT INTO pensje VALUES(2, 'sekretarka', 4000, 2);
INSERT INTO pensje VALUES(3, 'kierowca', 4500, 3);
INSERT INTO pensje VALUES(4, 'programista', 7000, 4);
INSERT INTO pensje VALUES(5, 'programista', 7500, 5);
INSERT INTO pensje VALUES(6, 'recepcjonistka', 3500, 6);
INSERT INTO pensje VALUES(7, 'menager', 8000, 7);
INSERT INTO pensje VALUES(8, 'pracownik techniczny', 8);
INSERT INTO pensje VALUES(9, 'programista', 9);
INSERT INTO pensje VALUES(10, 'kierownik działu', 10);

INSERT INTO premie VALUES(1, 'uznaniowa', 2500);
INSERT INTO premie VALUES(2, 'motywacyjna' 1000);
INSERT INTO premie VALUES(3, 'brak', 0);
INSERT INTO premie VALUES(4, 'działowa', 700);
INSERT INTO premie VALUES(5, 'działowa', 700);
INSERT INTO premie VALUES(6, 'motywacyjna', 600);
INSERT INTO premie VALUES(7, 'uznaniowa', 2000);
INSERT INTO premie VALUES(8, 'zadaniowa', 1200);
INSERT INTO premie VALUES(9, 'działowa', 700);
INSERT INTO premie VALUES(10, 'uznaniowa', 1000);

SELECT * FROM pracownicy;
SELECT * FROM godziny;
SELECT * FROM pensje;
SELECT * FROM premie;
