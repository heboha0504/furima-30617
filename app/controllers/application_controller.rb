class ApplicationController < ActionController::Base
 before_action :configuer_permitted_parameters, if: :devise_controller?

protected

 def configuer_permitted_parameters
   binding.pry
   devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :emil, :birth_day, :first_name, :last_name, :name, :surname,])
 end
end
