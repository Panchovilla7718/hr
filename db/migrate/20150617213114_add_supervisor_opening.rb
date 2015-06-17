class AddSupervisorOpening < ActiveRecord::Migration
  def change
    add_column :openings, :supervisor_id, :integer
  end
end
