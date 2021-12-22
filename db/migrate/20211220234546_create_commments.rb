class CreateCommments < ActiveRecord::Migration[6.1]
  def change
    create_table :commments do |t|
      t.text :feedback
      t.references :post, null: false, foreign_key: true
      t.integer :views
      t.integer :candidates
      t.integer :invited
      t.text :action

      t.timestamps
    end
  end
end
