class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.string :status
      t.timestamps null: false
    end
  end
end
