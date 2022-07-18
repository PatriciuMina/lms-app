# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'ubb',
            email: 'ubb@ubb.com',
            password: 'ubbubb',
            password_confirmation: 'ubbubb',
            domain: 'ubb',
            role: 'admin')

User.create(name: 'utcn',
            email: 'utcn@utcn.com',
            password: 'utcnutcn',
            password_confirmation: 'utcnutcn',
            domain: 'utcn',
            role: 'admin')
