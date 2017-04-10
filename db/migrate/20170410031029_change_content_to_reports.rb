class ChangeContentToReports < ActiveRecord::Migration[5.0]
  def change
    change_column :reports, :content, :text
  end
end
