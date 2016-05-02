class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo, null: false
      t.text :texto, null: false
      t.boolean :anonimo, default: false
      t.references :usuario, index: true, foreign_key: true
    end
  end
end
