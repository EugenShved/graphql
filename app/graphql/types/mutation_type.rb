module Types
  class MutationType < Types::BaseObject
    field :createDirector, mutation: Mutations::CreateDirector
    field :createMovie, mutation: Mutations::CreateMovie
    field :updateDirector, mutation: Mutations::UpdateDirector
    field :updateMovie, mutation: Mutations::UpdateMovie
  end
end