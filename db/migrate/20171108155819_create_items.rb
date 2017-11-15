class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :category
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
