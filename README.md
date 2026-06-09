# Fruktparadiset – Webbserverprogrammering 1

Första projektet i kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. Övningar görs i par efter genomgång.

![Skärmbild på sidan vi kommer arbeta med](docs/img/fruktparadiset.png)

## Lärandemål

Steg för steg bygger vi upp en fruktaffär som en enkel webshop. Målet med projektet är att:

- Bli bekanta med hur en webbapp hänger ihop
- Kunna förklara vad som händer när en användare lägger till en ny produkt
- Bli bekanta med databaser och SQL

## Installation

1. Ladda ner Github-repositoriet till din WSP-mapp. Använd Github desktop för att göra en clone.
2. `bundle install` - installerar de externa bibliotek som används

## Användning

| Kommando | Beskrivning |
|---|---|
| `rake` | Startar appen och skapar databasen automatiskt om den saknas |
| `rake seed` | Återställer databasen från `db/seeder.rb` |
| `rake kill` | Stänger av webbservern (port 9292) |
| `ctrl + c` | Stänger webbservern |

Appen körs på http://localhost:9292

## Verktyg

Använd `DB Browser for SQLite` för att titta på, arbeta fram och testa SQL-kod.

## Länkar

- https://sqlbolt.com/
- https://sqlitebrowser.org/
