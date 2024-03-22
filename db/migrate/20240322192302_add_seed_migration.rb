class AddSeedMigration < ActiveRecord::Migration[7.1]
  def change
    Director.create(name: 'Matt Wellheim', age: '43')
    Director.create(name: 'Alex Mitman', age: '23')
    Director.create(name: 'Hola Samon', age: '53')
    Director.create(name: 'Minos Tirit', age: '33')
    Director.create(name: 'Valson Gembini', age: '25')

    Movie.create(name: 'Matrix 1', genre: 'neo-pop-fantastic', director_id: 1)
    Movie.create(name: 'Matrix 2', genre: 'neo-pop-fantastic', director_id: 1)
    Movie.create(name: 'Matrix 3', genre: 'neo-pop-fantastic', director_id: 1)
    Movie.create(name: 'Lord of Rings', genre: 'neo-pop-fantastic', director_id: 2)
    Movie.create(name: 'Lord of Rings 2', genre: 'neo-pop-fantastic', director_id: 2)
    Movie.create(name: 'Lord of Rings 3', genre: 'neo-pop-fantastic', director_id: 2)
    Movie.create(name: 'Taxi 1', genre: 'action', director_id: 3)
    Movie.create(name: 'Taxi 2', genre: 'action', director_id: 3)
    Movie.create(name: 'Taxi 3', genre: 'action', director_id: 3)
    Movie.create(name: 'Sherlock Holmes', genre: 'detective', director_id: 4)
  end
end
