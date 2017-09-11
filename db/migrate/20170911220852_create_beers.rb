class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :desc
      t.string :abv
      
      t.timestamps
    end
  end
end
