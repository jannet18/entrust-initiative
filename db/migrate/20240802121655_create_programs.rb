class CreatePrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
