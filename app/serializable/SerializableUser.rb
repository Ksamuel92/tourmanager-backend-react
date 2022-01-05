class SerializableUser < JSONAPI::Serializable::Resource
#JSONAPI for Devise User Authentication
#TODO: Migrate from ActiveRecord Serializer to JSONAPI

    type 'users'
  
    attributes :email
  
    link :self do
      @url_helpers.api_user_url(@object.id)
    end
  end