class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :picktype
      t.text :link
      t.string :score
      t.string :isbn
      t.string :publisher
      t.integer :year_published
      t.string :pick_length

      t.timestamps
    end
  end
end
