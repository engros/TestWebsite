class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper #include sessionhelper to inherit from actioncontroller
end