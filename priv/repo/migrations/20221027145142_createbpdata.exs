defmodule Measurements.Repo.Migrations.CreateBPData do
  use Ecto.Migration

  def change do
    create table(:bpdata) do
      add :systolic, :integer
      add :diastolic, :integer
      add :pulse, :integer
      add :date, :date
      add :time, :time
      add :exercise, :boolean
      add :stress, :boolean
      add :alcohol, :boolean
      add :cardio, :boolean
      add :sleep, :boolean
      add :notes, :string
      add :user_id, references(:users, on_delete: :delete_all)
      timestamps()
    end
  end
end
