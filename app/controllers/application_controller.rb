class ApplicationController < ActionController::API
    before_action :log_request

    private
  
    def log_request
      Rails.logger.info "Request Method: #{request.method}"
      Rails.logger.info "Request Path: #{request.path}"
    end
end
