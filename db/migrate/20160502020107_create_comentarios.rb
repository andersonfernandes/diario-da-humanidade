class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :texto, null: false
      t.boolean :anonimo, default: false
      t.references :usuario, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
    end
  end
end
