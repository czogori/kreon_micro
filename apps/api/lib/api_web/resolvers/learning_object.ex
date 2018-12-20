defmodule ApiWeb.Resolvers.LearningObject do
    alias Kreon.LearningObject

    def all(_args, _info) do
        {:ok, LearningObject.all()}
    end

    def find(%{id: id}, _info) do
        case LearningObject.get_by_id(id) do
            nil  -> {:error, "Learning object not found"}
            learning_object -> {:ok, learning_object}
        end
    end
    
    def find(_, _), do: {:error, "Not Authorized"}

    def create(args, _info) do
        LearningObject.create(args)
    end

    def delete(args, _info) do
        LearningObject.delete(args)
    end

    def register(args, _info) do
        LearningObject.register(args)
    end

    def deregister(args, _info) do
        LearningObject.deregister(args)
    end
end