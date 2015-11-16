class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    t.string :name
    t.string :age
    t.string :gender
    t.string :description
    t.references :user, index: true, foreign_key: true
    t.references :neighborhood, index: true, foreign_key:true
    end
  end
end
