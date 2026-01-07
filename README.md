# Webbserverprogrammering 1 - Övning 2
Första projektet i kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. Efter genomgång görs övningar **i par**.

![Skärmbild på sidan vi kommer arbeta med](docs/img/fruktparadiset.png)

## Lärandemål

Steg för seg bygger vi upp en lista över vilka frukter vår affär har i sitt lager. Målet med projektet är att:

- Bli bekanta med hur en webbapp hänger ihop
- Kunna förklara vad som händer när en användare lägger till en ny produkt
- Bli bekanta medb databaser och SQL

Det går att fortsätta utveckla butiken genom att t.ex. lägga till nya slags produkter som `/bread` eller inloggning med varukorg t.ex. 

## Installation

1. Ladda ner repositoriet till mappen Webbserverprogrammering på din dator. Antingen som ZIP (isåfall måste du packa upp ZIP-filen) eller så laddar du ner med: `git clone` Spara mappen till din WSP-mapp.
2. `bundle install` | Installerar de biblotek (tex. SQLite) du behöver
3. `rake` | Startar appen. Finns det ingen databas skapas en ny i `db/sqlite.db`
4. `ctrl + c` | Stänger webbservern
5. `rake seed` | Återställer databasen från seed-filen
6. http://localhost:9292 | Adressen till din webbapp
7. `rake kill` | Stänger av alla Ruby om du t.ex. har problem att få igång webbservern med felmeddelande ungefär som `Address already in use - bind(2) for 0.0.0.0:9292` 

Använd verktyget `DB Browser for SQLite` för att titta på, arbeta fram och testa SQL-kod.

## Länkar
* https://sqlbolt.com/
* https://sqlitebrowser.org/

