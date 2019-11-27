class AddMedicalToEstablishment < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :medical_equipement, :boolean
  end
end
