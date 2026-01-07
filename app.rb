require 'debug'
require "awesome_print"


class App < Sinatra::Base
    setup_development_features(self)

    # Funktion för att prata med databasen
    # Exempel på användning: db.execute('SELECT * FROM fruits')
    def db
      return @db if @db

      @db = SQLite3::Database.new(DB_PATH)
      @db.results_as_hash = true

      return @db
    end

    # Routen gör en redirect till '/fruits'
    get '/' do
        redirect('/fruits')
    end

    #Routen hämtar alla frukter i databasen
    get '/fruits' do
      @fruits = db.execute('SELECT * FROM fruits')
      ap @fruits
      erb(:"fruits/index")
    end

    # Routen visar ett formulär för att spara en ny frukt till databasen.
    get '/fruits/new' do
      erb(:"fruits/new")
    end

    # Routen sparar en frukt till databasen och gör en redirect till '/fruits'.
    #
    # ToDo
    #     1). Läs fruit_name & fruit_description från params
    #     3). Kör SQL för att lägga till den nya frukten i databasen
    #     4). Redirect
    post '/fruits' do
      ap params
      name = params["fruit_name"]
      description = params["fruit_description"]

      db.execute("INSERT INTO fruits (name, description) VALUES(?,?)", [name, description])

      redirect("/fruits")
    end

    # Routen visar all info för frukten med id:t
    get '/fruits/:id' do | id |
      @fruit = db.execute('SELECT * FROM fruits WHERE id=?', id).first
      ap @fruit
      erb(:"fruits/show")
    end

    # Routen tar bort frukten med id
    post '/fruits/:id/delete' do | id |
      db.execute("DELETE FROM fruits WHERE id =?", id)
      
      redirect("/fruits")
    end

    # Routen visar ett formulär på edit.erb med datan för frukten med id
    #
    # ToDo
    #     1). Hämta info (från databasen) om frukten med id
    #     2). Visa infon i fruits/edit.erb
    get '/fruits/:id/edit' do | id |
      ap "Hämtar info om frukten med id: #{id}"
      @fruit = db.execute('SELECT * FROM fruits WHERE id=?', id).first
      ap @fruit
      erb(:"fruits/edit")
    end

    # Routen sparar ändringarna från formuläret
    #
    # ToDo
    #     1). Läs fruktens namn + beskrivning från params (formuläret)
    #     2). Kör SQL för att uppdatera datan i databasen
    #     3). Redirect
    post "/fruits/:id/update" do | id |
      f_name = params["fruit_name"]
      f_category = params["fruit_description"]

      sql = "UPDATE fruits SET name =?, description=? WHERE id =?"
      db.execute(sql, [f_name, f_category, id])

      redirect("/fruits")
    end

end
