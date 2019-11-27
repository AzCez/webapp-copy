class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :facebook_id, :string
    add_column :users, :google_id, :string
    add_column :users, :phone_number, :string
    add_column :users, :pin, :string
    add_column :users, :address, :string
    add_column :users, :company_name, :string
    add_column :users, :compagny_business, :string
    add_column :users, :company_website, :string
    add_column :users, :company_tax_id, :string
    add_column :users, :iban, :string
    add_column :users, :bic, :string
    add_column :users, :role, :string
    add_column :users, :avatar, :string
    add_column :users, :others_accessibility_need, :string
    add_column :users, :others_medical_help_need, :string
    add_column :users, :gender, :string
    add_column :users, :stripe_id, :string
    add_column :users, :merchant_id, :string
    add_column :users, :merchant_provider, :string
    add_column :users, :merchant_access_code, :string
    add_column :users, :merchant_publishable_key, :string
    add_column :users, :class_name, :string
    add_column :users, :agency_network, :string
    add_column :users, :name, :string
    add_column :users, :fullname, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :description, :text
    add_column :users, :phone_verified, :boolean
    add_column :users, :medical_bed, :boolean
    add_column :users, :person_lift, :boolean
    add_column :users, :nurse, :boolean
    add_column :users, :help_to_the_person, :boolean
    add_column :users, :physio_therapist, :boolean
    add_column :users, :admin, :boolean, default: false
    add_column :users, :pro, :boolean, default: false, null: false
    add_column :users, :birth_date, :date
    add_column :users, :unread, :integer, default: 1
    add_column :users, :cell, :float
  end
end
