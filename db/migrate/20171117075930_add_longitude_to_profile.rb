class AddLongitudeToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :longitude, :float
  end
end
