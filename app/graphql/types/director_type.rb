# frozen_string_literal: true

module Types
  class DirectorType < Types::BaseObject
    field :id, ID
    field :name, String, null: false
    field :age, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :movies, [Types::MovieType]

    def movies
      Loaders::AssociationLoader.for(object.class, :movies).load(object)
    end
  end
end