class AddFieldsToEstablishment < ActiveRecord::Migration[5.2]
  def change
    add_column :establishments, :half_board, :string
  end
end
