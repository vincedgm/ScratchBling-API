# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Backscratcher.create([
    {
        name: 'The Itcher',
        description: 'Scratch Any Itch',
        size: ['XL'],
        price: 27
    },
    {
        name: 'The Blinger',
        description: 'Diamonds',
        size: ['L'],
        price: 343
    },
    {
        name: 'Glitz and Gold',
        description: 'Gold handle and fancy emeralds',
        size: ['XL','L','M','S'],
        price: 4343
    }
])