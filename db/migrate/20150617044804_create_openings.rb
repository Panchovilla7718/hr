class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :position
      t.string :replacing
      t.string :emp
      t.string :reason
      t.string :action
      t.string :shift
      t.string :dept
      t.string :schedule
      t.string :status
      t.timestamps
    end
  end
end
