require 'sqlite3'
require_relative '../config'

class Seeder

  def self.seed!

    @db = nil

    puts "Using db file: #{DB_PATH}"
    puts "🧹 Dropping old tables..."
    drop_tables
    puts "🧱 Creating tables..."
    create_tables
    puts "🍎 Populating tables..."
    populate_tables
    puts "✅ Done seeding the database!"
  end

  private

  def self.db
    @db ||= begin
      db = SQLite3::Database.new(DB_PATH)
      db.results_as_hash = true
      db
    end
  end

  def self.drop_tables
    db.execute('DROP TABLE IF EXISTS products')
  end

  def self.create_tables
    db.execute('CREATE TABLE products (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                tastiness INTEGER,
                description TEXT)')
  end

  def self.populate_tables
    db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Äpple",  7, "En rund frukt som finns i många olika färger.")')
    db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Päron",  6, "En nästan rund, men lite avläng, frukt. Oftast mjukt fruktkött.")')
    db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Banan",  4, "En avlång gul frukt.")')
    db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Mango",  9, "En god (kanske) frukt med jobbig kärna i mitten.")')
  end

end
