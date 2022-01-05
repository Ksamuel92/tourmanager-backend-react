class ApplicationController < ActionController::API

  def render_jsonapi_response(resource)
    if resource.errors.empty?
      render json: resource
    else
      render json
    end
  end
  

end
