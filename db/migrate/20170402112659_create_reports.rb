class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.timestamp :created_at
      t.timestamps
    end
  end
end
