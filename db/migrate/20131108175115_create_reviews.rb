class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :body
      t.references :item, index: true #SJ comment - index: true part is not per the rails guide need to find the reason ????

      t.timestamps
    end
  end
end
