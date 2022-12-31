# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

beach = Map.create(name: "beach")
beach.characters.create(name: "waldo", position: [0.7263, 0.7326, 0.4283, 0.4563])
beach.characters.create(name: "wizard", position: [0.3767, 0.3872, 0.4058, 0.4337])
beach.characters.create(name: "odlaw", position: [0.2159, 0.2216, 0.4076, 0.4292])
beach.characters.create(name: "wilma", position: [0.8808, 0.8877, 0.4617, 0.477])

ski = Map.create(name: "ski")
ski.characters.create(name: "waldo", position: [0.9606, 0.9716, 0.8642, 0.9228])
ski.characters.create(name: "wizard", position: [0.1759, 0.1806, 0.9023, 0.9300])
ski.characters.create(name: "odlaw", position: [0.4248, 0.4329, 0.7665, 0.7840])
ski.characters.create(name: "wilma", position: [0.5961, 0.6059, 0.5195, 0.5463])
