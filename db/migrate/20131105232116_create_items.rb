class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
