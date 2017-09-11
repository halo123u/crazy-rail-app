class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :desc
      t.string :abv
      t.references :company, foreign_key: true

      t.timestamps
    end
    add_index :beers, :company_id
  end
end
