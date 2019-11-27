class AddPhotosToEstablishments < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :photos, :string, array: true, default: []
  end
end
