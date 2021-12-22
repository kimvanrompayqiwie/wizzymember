class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :feedback
      t.references :post, null: false, foreign_key: true
      t.integer :views
      t.integer :candidates
      t.integer :invited
      t.string :personality
      t.text :action

      t.timestamps
    end
  end
end
