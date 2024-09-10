require 'sqlite3'

class Seeder
  
  def self.seed!
    drop_tables
    create_tables
    populate_tables
  end

  def self.drop_tables
    db.execute('DROP TABLE IF EXISTS fruits')
  end

  def self.create_tables
    db.execute('CREATE TABLE fruits (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                tastiness INTEGER,
                description TEXT)')
  end

  def self.populate_tables
    db.execute('INSERT INTO fruits (name, tastiness, description) VALUES ("Äpple",   7, "En rund frukt som finns i många olika färger.")')
    db.execute('INSERT INTO fruits (name, tastiness, description) VALUES ("Päron",    6, "En nästan rund, men lite avläng, frukt. Oftast mjukt fruktkött.")')
    db.execute('INSERT INTO fruits (name, tastiness, description) VALUES ("Banan",  4, "En avlång gul frukt.")')
    db.execute('INSERT INTO fruits (name, tastiness, description) VALUES ("Mango",  9, "En god (kanske) frukt med jobbig kärna i mitten.")')
  end

  private
  def self.db
    return @db if @db
    @db = SQLite3::Database.new('db/fruits.sqlite')
    @db.results_as_hash = true
    @db
  end
end


Seeder.seed!