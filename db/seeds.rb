# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

User.create([
    {
        id: 1,
        provider: 'dummy provider',
        name: 'Dummy user'
    }
])

Task.create([
    {
        title: 'Task 1',
        body: 'Detail of Task 1',
        deadline: DateTime.parse('2019-08-21T12:13:14Z'),
        user_id: 1,
    },
    {
        title: 'Task 2',
        body: 'Detail of Task 2',
        deadline: DateTime.parse('2019-08-23T12:13:14Z'),
        user_id: 1,
    },
    {
        title: 'Task 3',
        body: 'Detail of Task 3',
        deadline: DateTime.parse('2019-08-24T12:13:14Z'),
        user_id: 1,
    },
])