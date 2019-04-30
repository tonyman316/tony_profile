class HomeController < ApplicationController
  before_action :allow_iframe_requests

  def index
  end

  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end
end
