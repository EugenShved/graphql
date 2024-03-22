# frozen_string_literal: true

module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :genre, String, null: false
    field :director_id, Integer, null: false
    field :director, DirectorType
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    def director
      Director.find_by(id: object.director_id)
    end
  end
end