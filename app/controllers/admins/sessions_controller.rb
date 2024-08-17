# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController
  respond_to :json
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  private

  # def respond_with(resource, _opts = {})
  #   render json: {message: "Logged in successfully.", admin: current_admin}, status: :ok
  # end

  # def respond_to_on_destroy
  #   jwt_payload = JWT.decode(request.headers['Authorization'].split(' ').last,
  #                            Rails.application.secrets.secret_key_base).first
  #   current_admin = Admin.find(jwt_payload['sub'])
  #   if current_admin
  #     render json: { message: 'Logged out successfully.' }, status: :ok
  #   else
  #     render json: { message: 'Logged out failure.' }, status: :unauthorized
  #   end
  # end

  def respond_with(resource, _opts = {})
    render json: {
      status: {code: 200, message: 'Logged in sucessfully.'},
      data: AdminSerializer.new(resource).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def respond_to_on_destroy
    if current_admin
      render json: {
        status: 200,
        message: "Logged out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end
