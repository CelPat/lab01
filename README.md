A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

ZADANIE:

Zaprojektować i zdefiniować klasy Lampka i Zarowka.
Klasa Lampka powinna zawierać pola składowe:

atrybut określający czy lampka aktualnie świeci,
atrybut określający z jaką intensywnością lampka świeci (0,1,2 .. 10),
żarówkę,
oraz metody wykonujące następujące czynności:

włączenie lampki,
wyłączenie lampki,
rozjaśnienie lampki (próba rozjaśnienia lampki do poziomu wyższego niż 10 powoduje spalenie żarówki),
ściemnienie lampki (ściemnienie lampki do poziomu 0 powoduje jej wyłączenie),
wymianę żarówki (możliwe tylko jeśli lampka jest wyłączona); zwracana wartość czy wymieniono żarówkę,
sprawdzenie czy lampka jest włączona,
sprawdzenie czy lampka świeci,
sprawdzenie czy żarówka jest spalona.
Klasa Zarowka powinna zawierać następujące pola składowe:

atrybut określający czy żarówka świeci,
atrybut określający czy żarówka jest spalona,
oraz metody realizujące:

zapalenie żarówki,
zgaszenie żarówki,
sprawdzenie czy żarówka świeci,
sprawdzenie czy żarówka jest spalona.
Samodzielnie zaimplementować kod testujący sprawdzający poprawność wykonania zadania.
