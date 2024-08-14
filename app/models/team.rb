class Team < ActiveRecord::Base
    def image_url
        ActionController::Base.helpers.asset_path(image)
    end
end
