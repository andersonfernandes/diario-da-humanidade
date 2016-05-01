class AddNameToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :name, :string
  end
end
