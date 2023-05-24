class JobsController < ApplicationController
  before_action :set_access_control_headers

  def show
    jobid = params[:jobid]
    url = url = ENV['TORRE_API_JOB_URL'] + jobid
    response = RestClient.get(url)
    render json: response.body
  end

  private

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
  end
end
