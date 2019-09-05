class User < ApplicationRecord
    def self.find_or_create_from_auth(auth)
        provider = auth[:provider]
        uid = auth[:uid]
        name = auth[:info][:name]

        self.find_or_create_by(provider: provider, uid: uid) do |user|
            user.name = name
        end
    end
end
