Wierszopis - serwis na ASI
============================

[Dokument Wizji]

Dokument wizji dla projektu "Wierszopis":
- Artur Rybak,
- Daniel Landowski,
- Łukasz Kępiński.

Data: 12.01.2011r.


## Installation
```
bundle install
bundle exec rake db:setup
bundle exec rails s
```

## Deployment
https://wierszopis.onrender.com


-> Wprowadzenie
=================
  Dokument dotyczy projektu realizowanego w ramach zajęć z Architektury serwisów internetowych. 
Niniejszy dokument służy przedstawieniu przeznaczenia tworzonego systemu, jego głównych 
cech i przyjętych założeń.

-> Cel
========
  Celem naszego projektu jest stworzenie uniwersalnego serwisu internetowego "Wierszopis" na którym 
użytkownicy będą mógli zamieszczać swoje utwory, komentować wiersze pozostałych użytkowników. 

  Wybraliśmy taki projekt, gdyż coś podobnego funkcjonuje już w Sieci - jeden z naszych kolegów tworzy 
taki serwis - jednak jego funkcjonalność jest bardzo ograniczona. Chcemy ją znacznie rozszerzyć, 
stworzyć z tego serwis dynamiczny, a jednocześnie przystępny dla każdego użytkownika.

  Serwis zostanie wprowadzony do sieci, gdzie przejdzie generalny test, jako substytut istniejącego 
już serwisu prowadzonego przez naszego kolegę.

-> Rynek
==========
  Serwis "Wierszopis" w odróżnieniu od pozostałych "blogo-podobnych" stron będzie wyróżniał się możliwością logowania 
poprzez różne konta (Facebook, Gmail, OpenID etc.). Jednocześnie chcialibyśmy, aby każdy użytkownik mógł po wprowadzeniu 
swojego maila ujrzeć swój Gravatar. Tutaj warto dodać, że nie trzeba będzie się koniecznie rejestrować, kiedy ktoś 
zostawi komentarz bez zalogowania, ale poda dobry email, jego Gravatar będzie widoczny. Dodatkowo, dla użytkowników 
aktywnie umieszczających w serwisie swoją twórczość, spróbujemy wprowadzić ładny, wygodny interfejs wprowadzania utworów, 
coś innego niż zwykłe pole tekstowe. Być może stworzymy również kanał RSS, dodawanie podkładu muzycznego do wierszy, 
który potęguje emocje czytelnika.

-> Użytkownicy
================
  Powyższy serwis przeznaczony będzie dla wielbicieli poematów, wierszy, cytatów. Każdy powinien zainteresować się 
chociażby jednym utworem, z uwagi na to, że każdy może dodawać własne utwory, zawartość poetycka serwisu będzie 
bardzo rozbudowana, dopasowana do szerokich gustów. Co więcej serwis stanie się całkiem dobrym narzędziem dla 
artystów chcących dotrzeć do szerszego grona czytelników. Przewidujemy póki co około 20 stałych bywalców i gości. 
Na podstawie stażu działania aktualnej wersji "Wierszopisu", miesięczna liczba odwiedzin szacowana jest na 
około 300, do 500. Każdy będzie mógł zostawić komentarz, wysłać wiadomość do autora, dodawać własne wiersze.

-> Wizja projektu
===================
Nasze założenia:
- wygodne dodawanie wierszy,
- dodawanie muzyki do wierszy (prosty odtwarzacz muzyczny przy wybranych utworach),
- kanał RSS,
- tagowanie wierszy,
- ocenianie wierszy,
- komentowanie wierszy
- przeszukiwanie wierszy po tytułach/tagach,
- możliwość przeglądania (z opcją "swoje" i "wszystkie"): ostatnio dodanych wierszy, ostatnio skomentowanych 
  wierszy, wszystkich komentarzy na jednym ekranie w porządku chronologicznym i odwrotnym do niego, 
- logowanie poprzez portale społecznościowe i nie tylko (Gmail, Facebook, OpenID),
- zakładanie konta przez użytkownika,
- użytkownik posiada Gravatar,
- możliwość wysyłania wiadomości do użytkowników,
- każdy zarejestrowany użytkownik posiadać będzie swoją podstronę, gdzie będzie mógł umieszczać swoją twórczość.


-> Zakres i ograniczenia
==========================
[Zakres:]
 - W pierwszej wersji systemu planujemy zaimplementować wszystkie wyżej wymienione założenia, oprócz:
 - dodawanie muzyki (odtwarzacz muzyczny przy wybranych utworach),
 - kanał RSS,
 - ocenianie wierszy.

Powyższe funkcjonalności znajdą się w programie o ile nasze możliwości i czas nam na to pozwolą.

Dodatkowo chcialibyśmy wprowadzić:
 - 5 ostatnich wierszy na stronie głównej,
 - losowy wiersz lub najpopularniejszy wiersz na stronie głównej,
 - większą konfigurowalność własnej strony wierszowej.

[Ograniczenia:]
 - maksymalnie jeden utwór muzyczny do jednego wiersza,
 - autorzy swoich wierszy nie mogą ingerować w twórczość innych,
 - tylko autor, który się zarejestruje w serwisie "Wierszopis" będzie mógł dodawać wiersze,
 - każdy wiersz musi posiadać co najmniej jeden tag i przynależeć do przynajmniej jednej kategorii. 

