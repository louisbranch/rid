class CreateIds < ActiveRecord::Migration
  def change
    create_table :ids do |t|
      t.string :name
      t.integer :degree_id
      t.integer :university_id

      t.timestamps
    end
  end
end
