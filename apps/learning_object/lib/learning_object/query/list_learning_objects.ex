defmodule Kreon.LearningObject.Query.ListLearningObjects do
    import Ecto.Query
    alias Kreon.LearningObject.Model.LearningObject
    alias Kreon.LearningObject.Repo

    def execute() do
        query = from lo in LearningObject,
            where: is_nil(lo.parent_id)
        Repo.all(query)
    end
end