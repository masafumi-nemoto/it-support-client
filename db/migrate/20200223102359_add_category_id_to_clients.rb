class AddCategoryIdToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :category_id, :integer
  end
end
