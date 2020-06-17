class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:ename, :age, :contact, :post, :gender, :works_for, :operates])
        devise_parameter_sanitizer.permit(:sign_in) do |employee_params|
            employee_params.permit(:employee, :password)
        end
    end

    protect_from_forgery with: :exception
end
