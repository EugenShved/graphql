class Mutations::CreateDirector < Mutations::BaseMutation
  null true
  argument :age, String, required: true
  argument :name, String, required: true
  field :id, ID, null: true

  def resolve(age:, name:)
    record = Director.create(age: age, name: name)
    raise GraphQL::ExecutionError, "Unable to create Director" if record.nil?

    { id: record.id }
  end
end
