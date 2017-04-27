class AddColumnToCurriclum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums,:progress_url, :text
  end
end
