module ApplicationHelper
  def set_icon(user)
    user.icon && user.icon.url ? user.icon.url : 'default.png'
  end

  def set_header_image(profile)
    profile.header_image && profile.header_image.url ? profile.header_image.url : 'header_image_default.png'
  end

  def set_post_picture(post)
    post.picture && post.picture.url ? post.picture.url : 'no_image_gray_medium.png'
  end

  def set_exercise_icon(exercise)
    exercise.icon && exercise.icon.url ? exercise.icon.url(:thumb) : 'exercise_icon.png'
  end

  def set_body_picture1(body_status)
    body_status.picture1 && body_status.picture1.url ? body_status.picture1.url : 'no_image_gray_medium.png'
  end

  def set_body_picture2(body_status)
    body_status.picture2 && body_status.picture2.url ? body_status.picture2.url : 'no_image_gray_medium.png'
  end

  def set_body_picture3(body_status)
    body_status.picture3 && body_status.picture3.url ? body_status.picture3.url : 'no_image_gray_medium.png'
  end

  def format_date_time(date)
    date.strftime("%Y-%m-%d %H:%M")
  end

  def format_date(date)
    date.strftime("%Y-%m-%d")
  end
end
