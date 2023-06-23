class PostSerializer < Panko::Serializer
    attributes :title , :content , :image_url

    def image_url
        if object.image.attached?
            Rails.application.routes.url_helper.rails_blob_path(object.image,only_path: true)
        end
    end
end