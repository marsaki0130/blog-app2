# frozen_string_literal: true

module UserDecorator
    def display_name
      profile&.nickname || self.email.split('@').first #ぼっち演算子
    end

    def avatar_image
      if profile&.avatar&.attached?
         profile.avatar
      else
        'default-avatar.png'
      end
    end
end
