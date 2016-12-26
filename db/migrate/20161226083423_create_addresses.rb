class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :desc
      t.references :user, foreign_key: true
      t.boolean :active
      t.timestamps
    end
  end
end
