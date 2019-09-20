class CreateCompliments < ActiveRecord::Migration[5.2]
  def change
    create_table :compliments do |t|
      t.text :message
      t.timestamps
    end
  end
end
