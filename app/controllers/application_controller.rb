class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveModel::ValidationError, with: :validation_error
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  

  private

  def record_not_found(exception)
    return render json: {errors: exception}, status: :unprocessable_entity
  end

  def record_invalid(invalid)
    return render json: {errors: invalid.record.errors}, status: 400
  end

  def validation_error(invalid)
    return render json: {errors: invalid.mode.errors}, status: 400
  end

end
