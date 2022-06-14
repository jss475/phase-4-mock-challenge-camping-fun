class SignupsController < ApplicationController

    def create
        signup = Signup.create(signups_param)
        if signup.valid?
            render json: signup, status: :created
        else
            render json: {errors: ["validation errors"]}, status: :unprocessable_entity
        end
    end

    private

    def signups_param
        params.permit(:time, :camper_id, :activity_id)
    end
end
