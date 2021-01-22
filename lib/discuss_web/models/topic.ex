defmodule DiscussWeb.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    belongs_to :user, DiscussWeb.User
  end

#backslashes and empty map is the default value
  def changeset(struct, params \\ %{} ) do #struct represenets a record in database
    struct #params are the propirties we want to update the struct with
    |> cast(params, [:title]) #produces a changeset--> updates the recors
    |> validate_required([:title]) #error detector
  end

end
