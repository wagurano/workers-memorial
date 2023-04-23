class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :category
      t.string :tags
      t.string :image

      t.timestamps
    end
  end
end
