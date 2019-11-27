class AddImageToEstablishment < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :first_image, :string
  end
end
