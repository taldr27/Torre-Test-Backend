require 'rest-client'

class UsersController < ApplicationController
  before_action :set_access_control_headers

  def show
    username = params[:username]
    url = ENV['TORRE_API_USER_URL'] + username
    response = RestClient.get(url)
    render json: response.body
  end

  private

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
  end
end
