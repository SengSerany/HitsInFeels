class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.belongs_to :user, foreign_key: true
      t.string :link
      t.string :title
      t.text :description
      t.string :origin

      t.timestamps
    end
  end
end
