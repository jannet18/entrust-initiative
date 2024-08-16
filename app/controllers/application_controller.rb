class ApplicationController < ActionController::API
    before_action :log_request
    rescue_from JWT::ExpiredSignature, with: :render_unauthorized
    rescue_from JWT::VerificationError, with: :render_unauthorized
    
    private
  
    def log_request
      Rails.logger.info "Request Method: #{request.method}"
      Rails.logger.info "Request Path: #{request.path}"
    end

    def render_unauthorized
      render json: { error: 'Not Authorized' }, status: :unauthorized
    end
end
