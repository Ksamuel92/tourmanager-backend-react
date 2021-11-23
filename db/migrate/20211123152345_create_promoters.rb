class CreatePromoters < ActiveRecord::Migration[6.1]
  def change
    create_table :promoters do |t|
      t.string :name
      t.string :email
      t.string :slug

      t.timestamps
    end
  end
end
