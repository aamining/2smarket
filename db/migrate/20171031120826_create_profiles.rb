class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :mobile
      t.string :street_number
      t.string :addressline_1
      t.string :suburb
      t.string :state
      t.string :postcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
