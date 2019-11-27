class AddFielsGeoToEstablishment < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :country, :string
    add_column :establishments, :country_code, :string
    add_column :establishments, :postal_code, :string
    add_column :establishments, :zipcode, :string
  end
end
