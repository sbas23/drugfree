module ApplicationHelper
  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    #image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
    #          opts
    image_tag "user-chat.png", size: "40x40", alt: "Edit Entry"
  end
end
