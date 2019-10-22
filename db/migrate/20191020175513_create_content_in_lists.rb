class CreateContentInLists < ActiveRecord::Migration[5.2]
  def change
    create_table :content_in_lists do |t|
      t.belongs_to :content, foreign_key: true
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
