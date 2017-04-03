class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :type
      t.string :title
      t.string :body
      t.string :img

      t.timestamps
    end
  end
end
