class CreateCaptures < ActiveRecord::Migration
  def change
    create_table :captures do |t|
      t.integer :camera_id

      t.timestamps
    end
  end
end
