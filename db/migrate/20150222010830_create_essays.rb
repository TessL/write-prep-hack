class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
