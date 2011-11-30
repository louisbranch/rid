class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :acronymous
      t.string :name
      t.integer :state_id

      t.timestamps
    end
  end
end
