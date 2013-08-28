module MemberHelper
  # Returns the local image for the member.
  # If we have the member's twitter handle, make the image a link to
  # their twitter account, and append their handle to the title on the image.
  # If we don't have twitter, but we do have their githup username,
  # make the image a link to their github page.
  def member_avatar(member)
    title = "#{member.name}"
    if member.twitter.present?
      url = "http://twitter.com/#{member.twitter}"
    elsif member.github_name.present?
      url = "http://github.com/#{member.github_name}"
    end

    image = image_tag "members/#{member.avatar_file}", alt: member.name, title: title

    if url
      link_to image, url, target: "_blank"
    else
      image
    end
  end
end
