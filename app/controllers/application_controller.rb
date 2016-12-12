class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Include sessions helper module so that can be available through out app
  include SessionsHelper
end
