class AddLatitudeToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :latitude, :float
  end
end
