class App < Sinatra::Base

    # Funktion för att prata med databasen
    # Exempel på användning: db.execute('SELECT * FROM fruits')
    def db
      return @db if @db

      @db = SQLite3::Database.new("db/fruits.sqlite")
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
      p @fruits
      erb(:"fruits/index")
    end

    # Routen visar ett formulär för att spara en ny frukt till databasen.
    get '/fruits/new' do
      erb(:"fruits/new")
    end

    # Routen sparar en frukt till databasen och gör en redirect till '/fruits'.
    post '/fruits' do
      p params
      name = params["fruit_name"]
      description = params["fruit_description"]

      db.execute("INSERT INTO fruits (name, description) VALUES(?,?)", [name, description])

      redirect("/fruits")
    end

    # Övning no. 1
    # Routen visar all info (från databasen) om en frukt.
    get '/fruits/:id' do | id |
      #todo hämta data från databasen för frukten med id
      erb(:"fruits/show")
    end

    #Routen tar bort frukten med @id
    post '/fruits/:id/delete' do | id |
      db.execute("DELETE FROM fruits WHERE id =?", id)
      redirect("/fruits")
    end

end
