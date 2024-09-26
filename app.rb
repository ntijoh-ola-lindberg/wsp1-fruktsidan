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

    # Routen visar all info (från databasen) om en frukt
    get '/fruits/:id' do | id |
      @fruit = db.execute('SELECT * FROM fruits WHERE id=?',id).first
      erb(:"fruits/show")
    end

    # Routen tar bort frukten med id
    post '/fruits/:id/delete' do | id |
      db.execute("DELETE FROM fruits WHERE id =?", id)
      redirect("/fruits")
    end

    # Routen visar ett formulär på edit.erb för att ändra frukten med id
    get '/fruits/:id/edit' do | id |
      # todo: Hämta info (från databasen) om frukten med id

      # todo: Visa infon i fruits/edit.erb
    end

    # Routen sparar ändringarna från formuläret
    post "/fruits/:id/update" do | id |
      # todo: Läs name & category från formuläret
      
      # todo: Kör SQL för att uppdatera datan från formuläret
      
      # todo: Redirect till /fruits
    end

end
