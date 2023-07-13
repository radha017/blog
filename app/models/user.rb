require "base64"

class User < ApplicationRecord
    has_secure_password # :default 

    after_create :generate_token

    def generate_token
        self.token = Base64.encode64(self.email + '_avion1')

        self.save
    end
end
