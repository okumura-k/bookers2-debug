class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.float :star, default: 0
      t.timestamps
    end
  end
end
