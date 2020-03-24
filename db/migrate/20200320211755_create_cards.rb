class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :content_url
      t.string :card_title
      t.string :message
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
