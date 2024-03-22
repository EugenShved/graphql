class Mutations::UpdateMovie < Mutations::BaseMutation
  null true
  argument :id, Integer, required: true
  argument :genre, String, required: true
  argument :name, String, required: true
  argument :director_id, Integer, required: true
  field :id, ID, null: true

  def resolve(id:, **data)
    record = Movie.find_by(id: id)
    raise GraphQL::ExecutionError, "Unable to update Movie" if record.nil?
    record.update(data)
    { id: record.id }
  end
end