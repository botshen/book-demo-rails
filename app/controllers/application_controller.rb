class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_destroyed

  def not_destroyed(e)
    render json: { error: e.message }, status: :unprocessable_entity
  end

end
