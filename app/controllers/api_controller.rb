class ApiController < ApplicationController
  include Knock::Authenticable

<<<<<<< HEAD
  #before_action :set_default_format
=======
  # before_action :set_default_format
>>>>>>> 78bafec64f6ec95d01db537c3baf1a6d3e305be8


  private
    # def set_default_format
    #   request.format = :json
    # end

    # Define unauthorized access json response
    def unauthorized_entity(entity_name)
        render json: { error: "Unauthorized request" }, status:
        :unauthorized
    end
end
