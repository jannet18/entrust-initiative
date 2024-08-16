class Team < ActiveRecord::Base
    # def image_url
    #     ActionController::Base.helpers.asset_path(image)
    # end

    def upload_image(file)
        if File.exist?(file)
        result = Cloudinary::Uploader.upload(file)
        self.image = result['secure_url']
        save
        else
            puts "File not found: #{file}"
        end
    end
end
