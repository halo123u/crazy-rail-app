class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :desc
      t.string :abv
      t.string :image_url
      t.integer :company_id

      t.timestamps
    end
    add_index :beers, :company_id
  end
end
