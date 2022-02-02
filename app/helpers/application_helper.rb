module ApplicationHelper

    # Returns the Gravatar URL for the given user.
    def gravatar_url_for(user)
        if user
            gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
            gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
            return gravatar_url
        end
        image_path("default_user.png")
    end

    def resource_name
        :user
      end
    
      def resource
        @resource ||= User.new
      end
    
      def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
      end

end
