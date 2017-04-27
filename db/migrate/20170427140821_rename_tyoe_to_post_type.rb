class RenameTyoeToPostType < ActiveRecord::Migration[5.0]
  def change
    rename_column :updates, :type, :post_type
  end
end
