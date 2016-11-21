class AddLatitudeAndLongitudeToParcel < ActiveRecord::Migration[5.0]
  def change
    add_column :parcels, :latitude, :float
    add_column :parcels, :longitude, :float
  end
end
