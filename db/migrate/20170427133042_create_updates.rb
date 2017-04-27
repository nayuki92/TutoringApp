class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.integer :user_id
      t.string :type
      t.text :content

      t.timestamps
    end
  end
end
