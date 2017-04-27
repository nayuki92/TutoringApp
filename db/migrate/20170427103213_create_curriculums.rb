class CreateCurriculums < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculums do |t|
      t.integer :user_id
      t.text :summary

      t.timestamps
    end
  end
end
