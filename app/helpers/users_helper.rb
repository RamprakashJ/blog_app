module UsersHelper
  
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTF_Q_KBqkkxcZKU03dmYiG8vYue5Le8Wh73G0RuQhtV4aQYk9E"
    #gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
