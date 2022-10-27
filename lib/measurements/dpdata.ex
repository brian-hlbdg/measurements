defmodule Measurements.BPData do
  use Ecto.Schema
  import Ecto.Changeset

  schema "dpdata" do
    field :systolic, :integer
    field :diastolic, :integer
    field :pulse, :integer
    field :date, :date
    field :time, :time
    field :exercise, :boolean
    field :stress, :boolean
    field :alcohol, :boolean
    field :cardio, :boolean
    field :sleep, :boolean
    field :notes, :string
    field :user_id, :integer
    timestamps()
  end

  @doc false
  def changeset(dpdata, attrs) do
    dpdata
    |> cast(attrs, [:systolic, :diastolic, :pulse, :date, :time, :exercise, :stress, :alcohol, :cardio, :sleep, :notes, :user_id])
    |> validate_required([:systolic, :diastolic, :pulse])
  end
end
