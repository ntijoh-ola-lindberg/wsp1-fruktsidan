# Webbserverprogrammering 1 - Övning 2
Exempel-projekt nummer 2 med övningar till kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg.
Efter genomgång görs övningar nedan **i par**.

![Skärmbild på sidan vi kommer arbeta med](docs/img/fruktparadiset.png)

## Komma igång
* Ladda ner repositoriet till mappen Webbserverprogrammering på din dator. Antingen som ZIP (isåfall måste du packa upp ZIP-filen) eller så laddar du ner med: `git clone`
* Installera: `bundle install`
* *Seeda* databasen: `rake seed`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Länkar
* https://sqlbolt.com/
* https://sqlitebrowser.org/

## Genomgång 1
* Visa routes `GET /fruits` och `/views/fruits/index.erb`
* Visa `layout.erb`
* Visa SQL:
    * *DB Browser for SQLite*
    * *SQLBolt*
    * `db/seeder.rb`
    * `db/fruits.sqlite`
    * `app.rb/db-metoden`
    * `views/layout.erb`
    * `db.execute('SELECT * FROM fruits WHERE id=?',id).first`

### Uppgifter 1
1. Gör *SQLBolt* t.o.m. **övning 2**.
2. Testa att sortera om frukterna på t.ex. ID. Du behöver uppdatera SQL-koden: `db.execute('SELECT * FROM fruits')`
3. Lägg till ca 5 nya frukter mha. `db/seeder.rb`. För att spara datan till databasen kör du `rake seed`
4. Öppna databasfilen i DBBrowser och dubbelkolla så du ser din data även där.
5. Visa all info om en frukt på routen `'/fruits/:id'`
6. Lägg till mer data eller funktioner som t.ex.
    * Visa stjärnor istället för ett nummer för fruktbetyg
    * Lägg till fler kolumner i databasen som t.ex. vilket land en frukt kommer ifrån eller hur mycket den kostar / kg
    * Lägg till testdatan mha. `db/seeder.rb`

## Genomgång 2
* Hur hänger allt ihop?
* `db.execute('SELECT * FROM fruits WHERE id=?',id).first` (igen)
* Ruby hashes
* SQL Injections

### Uppgifter 2
1. Gör *SQLBolt* t.o.m. **övning 10**.
2. Gör alla uppgifter på #1
3. Lägg till funktioner du kan komma på till fruktshoppen
4. Börja kämpa med nästa veckas uppgifter (uppgifter #3)

## Genomgång 3 (todo)
* [Spara data](https://ntijoh.github.io/webbserverprogrammeringsboken/#_insert) med [formulär](https://ntijoh.github.io/webbserverprogrammeringsboken/#_formulär)
* GET vs. POST
* Params

### Uppgifter 3
1. Gör *SQLBolt* t.o.m. **övning 15**.
2. Lägg till ett formulär för att skapa en ny frukt. Börja med routen `GET '/fruits/new'`.
    * För att spara frukten behöver du skicka datat från formuläret till `POST '/fruits/new'`.
3. Gör en knapp som tar bort en frukt.
4. Utöka funktionerna.
    * Utforska och lägg till de funktioner du tycker behövs
    * Lägg till bilder (eller ikoner) till frukterna

## Genomgång 4 (todo)
* [Uppdatera data](https://ntijoh.github.io/webbserverprogrammeringsboken/#_requests_routing)
* C.R.U.D.

### Uppgifter 4
* Lägg funktioner för att uppdatera datan för en frukt
* Lägg till kategorier för frukter & grönsaker
