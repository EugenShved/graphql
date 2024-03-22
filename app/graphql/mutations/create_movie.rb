class Mutations::CreateMovie < Mutations::BaseMutation
  null true
  argument :genre, String, required: true
  argument :name, String, required: true
  argument :director_id, Integer, required: true
  field :id, ID, null: true

  def resolve(genre:, name:, director_id:)
    record = Movie.create(genre: genre, name: name, director_id: director_id)
    raise GraphQL::ExecutionError, "Unable to create Movie" if record.nil?

    { id: record.id }
  end
end