class Mutations::UpdateDirector < Mutations::BaseMutation
  null true
  argument :id, Integer, required: true
  argument :name, String, required: true
  argument :age, Integer, required: true
  field :id, ID, null: true

  def resolve(id:, **data)
    record = Director.find_by(id: id)
    raise GraphQL::ExecutionError, "Unable to update Director" if record.nil?
    record.update(data)
    { id: record.id }
  end
end