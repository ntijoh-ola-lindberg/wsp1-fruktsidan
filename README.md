# Webbserverprogrammering 1 - Övning 2
Exempel-projekt nummer 2 med övningar till kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

![Alt text](docs/img/fruktparadiset.png)

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
    * @fruit = db.execute('SELECT * FROM fruits WHERE id=?',id).first

## Uppgifter 1 (i par)
1. Gör *SQLBolt* t.o.m. **övning 5**.
2. Testa att sortera om frukterna på t.ex. ID.
3. Visa all info om en frukt på routen `'/fruits/:id'`. 
    * Använd `fruits/show.erb` och `layout.erb`.
    * Lägg till fler funktioner som t.ex. 
        * Visa stjärnor istället för ett nummer för fruktbetyg
        * Lägg till fler kolumner i databasen (m.h.a. `seeder.rb`) som t.ex. origin.
4. Lägg till ett formulär för att skapa en ny frukt. Börja med routen `GET '/fruits/new'`. 
    * För att spara frukten behöver du skicka datat från formuläret till `POST '/fruits/new'`. Se uppgifter nedan.

## Genomgång 2
* Ta bort en frukt
* Uppdatera en frukt
* C.R.U.D.

## Uppgifter 2 (i par)
5. Gör SQL Bolt t.o.m. övning 15.
6. Gör en ta-bort-knapp som tar bort en frukt.
7. Gör en ändra-knapp
8. Utöka funktionerna.
    * Utforska och lägg till de funktioner du tycker behövs
    * Lägg till bilder till frukterna
    * Lägg till kategorier för frukter & grönsaker