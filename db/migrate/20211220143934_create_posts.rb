class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :region
      t.string :generation
      t.string :personality
      t.string :sectorcat
      t.string :functioncat
      t.string :type
      t.integer :duration
      t.date :online
      t.string :company
      t.string :views
      t.date :offline
      t.integer :candidates
      t.string :urljob
      t.string :media
      t.string :ads
      t.string :a
      t.string :b
      t.string :c
      t.integer :d
      t.integer :e
      t.integer :f
      t.date :g
      t.text :h
      t.text :i
      t.text :j

      t.timestamps
    end
  end
end
