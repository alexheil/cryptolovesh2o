module ApplicationHelper

  def full_title(page_title = '')
    base_title = "cryptolovesh2o"
    if page_title.empty?
      "#{base_title} | A Crypto Blog For Humans From Anywhere"
    elsif @user
      "#{page_title}"
    else
      "#{page_title} | #{base_title}"
    end
  end

  def posted(created_at)
    if created_at > Time.now - 1.day
      posted = time_ago_in_words(created_at) + " ago"
    else
      posted = created_at.strftime("%m.%d.%Y")
    end
    posted.capitalize
  end

  def title_1(str)
    # <%= title_1(title) %>
    content_tag(:div, sanitize(str), class: "title-1")
  end

  def title_2(str)
    # <%= title_2(title) %>
    content_tag(:div, sanitize(str), class: "title-2")
  end

  def title_3(str)
    # <%= title_3(title) %>
    content_tag(:div, sanitize(str), class: "title-3")
  end

  def title_4(str)
    # <%= title_4(title) %>
    content_tag(:div, sanitize(str), class: "title-4")
  end

  def color_darkgrey(str, options = '')
    # <%= color_darkgrey(str) %>

    content_tag(:div, sanitize(str), class: "color-darkgrey #{options}")
  end

  def spacing_static(direction, size)
    # <%= spacing_static('b', '2') %>

    direction = 'padding-top' if direction == 't'
    direction = 'padding-bottom' if direction == 'b'
    direction = 'padding-right' if direction == 'r'
    direction = 'padding-left' if direction == 'l'
      
    content_tag(:div, nil, class: "#{direction}-#{size}")
  end

  def social_media?(settings)
    return true if settings.twitter? || settings.instagram? || settings.facebook? || settings.pinterest? || settings.linkedin? || settings.youtube? || settings.twitch? || settings.discord?
  end

  def social_media_icons(settings)
    twitter = sanitize("<a href='https://www.twitter.com/#{settings.twitter}'><li class='twitter-link'><i class='fab fa-twitter'></i></li></a>") if settings.twitter?
    facebook = sanitize("<a href='https://www.facebook.com/#{settings.facebook}'><li class='facebook-link'><i class='fab fa-facebook-f'></i></li></a>") if settings.facebook?
    instagram = sanitize("<a href='https://www.instagram.com/#{settings.instagram}'><li class='instagram-link'><i class='fab fa-instagram'></i></li></a>") if settings.instagram?
    pinterest = sanitize("<a href='https://www.pinterest.com/#{settings.pinterest}'><li class='pinterest-link'><i class='fab fa-pinterest'></i></li></a>") if settings.pinterest?
    linkedin = sanitize("<a href='https://www.linkedin.com/#{settings.linkedin}'><li class='linkedin-link'><i class='fab fa-linkedin-in'></i></li></a>") if settings.linkedin?
    youtube = sanitize("<a href='https://www.youtube.com/#{settings.youtube}'><li class='youtube-link'><i class='fab fa-youtube'></i></li></a>") if settings.youtube?
    twitch = sanitize("<a href='https://www.twitch.com/#{settings.twitch}'><li class='twitch-link'><i class='fab fa-twitch'></i></li></a>") if settings.twitch?
    discord = sanitize("<a href='https://www.discord.com/#{settings.discord}'><li class='discord-link'><i class='fab fa-discord'></i></li></a>") if settings.discord?
  
    content_tag(:div, twitter + facebook + instagram + pinterest + linkedin + youtube + twitch + discord, class: "social-media-row")
  end

  def head_font_family
    if @settings.font_family_1?
      family = 'Nunito'
    elsif @settings.font_family_2?
      family = 'Roboto'
    elsif @settings.font_family_3?
      family = 'Roboto+Slab'
    elsif @settings.font_family_4?
      family = "Merriweather"
    elsif @settings.font_family_5?
      family = 'Open+Sans'
    elsif @settings.font_family_6?
      family = 'Source+Serif+Pro'
    elsif @settings.font_family_7?
      family = 'Zilla+Slab'
    elsif @settings.font_family_8?
      family = 'Montserrat'
    end

    font = <<-STR 
      <link href="https://fonts.googleapis.com/css2?family=#{family}:wght@300;400;700&display=swap" rel="stylesheet">
    STR

    font.html_safe
  end

  def head_title_family
    if @settings.title_family_1?
      family = 'Nunito'
    elsif @settings.title_family_2?
      family = 'Roboto'
    elsif @settings.title_family_3?
      family = 'Roboto+Slab'
    elsif @settings.title_family_4?
      family = "Merriweather"
    elsif @settings.title_family_5?
      family = 'Open+Sans'
    elsif @settings.title_family_6?
      family = 'Source+Serif+Pro'
    elsif @settings.title_family_7?
      family = 'Zilla+Slab'
    elsif @settings.title_family_8?
      family = 'Montserrat'
    end

    font = <<-STR 
      <link href="https://fonts.googleapis.com/css2?family=#{family}:wght@300;400;700&display=swap" rel="stylesheet">
    STR

    font.html_safe
  end

  def display_name(user)
    user.setting.title.presence || user.username
  end

end
