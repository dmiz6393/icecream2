class CreateIceCreams < ActiveRecord::Migration[5.2]
  def change
    create_table :ice_creams do |t|
      t.string :flavor
      t.decimal :price, :precision =>8 , :scale =>2

      t.timestamps
    end
  end
end
