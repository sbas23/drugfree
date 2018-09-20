module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "user-chat.png", size: "40x40", alt: "Edit Entry"
  end
end
