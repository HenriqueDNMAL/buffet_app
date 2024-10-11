class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    case resource.role
    when 'manager'
      manager_restaurants_path
    when 'kitchen_staff', 'wait_staff'
      staff_orders_path
    else
      root_path
    end
  end
end
