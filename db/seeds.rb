# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.create(name: 'Universitatea Babes',
              domain: 'ubb')
School.create(name: 'Universitatea Tehnica',
              domain: 'utcn')

User.create(name: 'ubb',
            email: 'ubb@ubb.com',
            password: 'ubbubb',
            password_confirmation: 'ubbubb',
            school_id: 1,
            domain: 'ubb',
            role: 'admin')

User.create(name: 'utcn',
            email: 'utcn@utcn.com',
            password: 'utcnutcn',
            password_confirmation: 'utcnutcn',
            school_id: 2,
            domain: 'utcn',
            role: 'admin')
