class CreateParcels < ActiveRecord::Migration[5.0]
  def change
    create_table :parcels do |t|
      t.string :address
      t.float :current_year_value
      t.float :previous_year_value
      t.float :total_taxes

      t.timestamps
    end
  end
end
