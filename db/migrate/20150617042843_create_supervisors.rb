class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :email
      t.string :plant
      t.timestamps
    end
  end
end
