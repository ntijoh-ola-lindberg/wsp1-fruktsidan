require 'sqlite3'
require_relative '../config'

db = SQLite3::Database.new(DB_PATH)

puts "🧹 Tar bort gamla tabeller..."
db.execute('DROP TABLE IF EXISTS products')

puts "🧱 Skapar tabeller..."
db.execute('CREATE TABLE products (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            tastiness INTEGER,
            description TEXT)')

puts "🍎 Fyller på med data..."
db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Äpple",  7, "En rund frukt som finns i många olika färger.")')
db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Päron",  6, "En nästan rund, men lite avlång, frukt. Oftast mjukt fruktkött.")')
db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Banan",  4, "En avlång gul frukt.")')
db.execute('INSERT INTO products (name, tastiness, description) VALUES ("Mango",  9, "En god frukt med stor kärna.")')

puts "✅ Databasen är seedad!"
