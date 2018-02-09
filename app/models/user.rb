class User < ActiveRecord::Base
  has_secure_password

  def mood
    # has a method 'mood' that returns 'sad' when the user is more nauseous than happy
    # has a method 'mood' that returns 'happy' when the user is more happy than nauseous
    unless admin
      happiness > nausea ? 'happy' : 'sad'
    end
  end
end