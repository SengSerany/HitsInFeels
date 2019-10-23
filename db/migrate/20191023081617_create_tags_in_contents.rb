class CreateTagsInContents < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_in_contents do |t|
      t.belongs_to :content, foreign_key: true
      t.belongs_to :emotion_tag, foreign_key: true

      t.timestamps
    end
  end
end
