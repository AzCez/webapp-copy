class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #parametres de connexion pour devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    #l'avatar n'est validé que sur une mise a jour
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :avatar, :phone_number, :description, :address, :company_name, :compagny_business, :company_website, :company_tax_id, :iban, :bic, :medical_bed, :person_lift, :others_accessibility_need, :nurse, :help_to_the_person, :physio_therapist, :others_medical_help_need, :gender, :birth_date ])
  end
end
