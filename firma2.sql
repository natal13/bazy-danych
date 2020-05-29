--zapytania cz 2

UPDATE ksiegowosc.pracownicy SET telefon = '(+48)' || telefon

UPDATE ksiegowosc.pracownicy SET telefon = SUBSTRING(telefon,1,5) || ' ' || SUBSTRING(telefon,6,3) || '-' || SUBSTRING(telefon,9,3) || '-' || SUBSTRING(telefon,12,3);

SELECT id_pracownika, UPPER(imie) AS IMIE, UPPER(nazwisko) AS NAZWISKO, UPPER(adres) AS ADRES, telefon FROM ksiegowosc.pracownicy WHERE
LENGTH(nazwisko) = (SELECT MAX(LENGTH(nazwisko)) FROM ksiegowosc.pracownicy);

SELECT pr.*, MD5(kwota::VARCHAR(32)) AS pensja FROM ksiegowosc.pracownicy pr, ksiegowosc.wynagrodzenie wy, ksiegowosc.pensja pe WHERE 
wy.id_pracownika = pr.id_pracownika AND wy.id_pensji = pe.id_pensji;

SELECT imie, nazwisko, pensja.kwota AS pensja, premia.kwota AS premia FROM ksiegowosc.wynagrodzenie 
LEFT JOIN ksiegowosc.pracownicy ON ksiegowosc.wynagrodzenie.id_pracownika = ksiegowosc.pracownicy.id_pracownika
LEFT JOIN ksiegowosc.pensja ON ksiegowosc.wynagrodzenie.id_pensji = ksiegowosc.pensja.id_pensji
LEFT JOIN ksiegowosc.premia ON ksiegowosc.wynagrodzenie.id_premii = ksiegowosc.premia.id_premii;

SELECT CONCAT('Pracownik '|| imie ||' ' ||nazwisko||', w dniu '|| data ||' otrzymał pensję całkowitą na kwotę '|| '' ) AS raport FROM ksiegowosc.pracownicy,ksiegowosc.wynagrodzenie;
				
