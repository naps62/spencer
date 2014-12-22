class APIController < ActionController::API
  include ::ActionController::Serialization

  rescue_from Exception do |error|
    render json: { error: error.message }, status: 500
  end
end
