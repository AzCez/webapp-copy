class AddCityToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :city, :string
  end
end
