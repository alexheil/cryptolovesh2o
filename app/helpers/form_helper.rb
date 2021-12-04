module FormHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def style_tab(columns, model, checked, name, number, long)
    if checked.to_s == "#{long}_#{number}"
      content_tag(:div, class: "field-#{columns}-column") do
        label_tag("#{model}_#{long}_#{long}_#{number}", name, class: "#{long} remember-active", id: "#{long}_#{number}") +
        radio_button_tag("#{model}[#{long}]", "#{long}_#{number}", true)
      end
    else
      content_tag(:div, class: "field-#{columns}-column") do
        label_tag("#{model}_#{long}_#{long}_#{number}", name, class: "#{long} remember-inactive", id: "#{long}_#{number}") +
        radio_button_tag("#{model}[#{long}]", "#{long}_#{number}", false)
      end
    end
  end

  #FONT FAMILY
  def font_family_tab(columns, model, checked, name, number, long)
    if checked.to_s == "#{long}_#{number}"

      content_tag(:div, class: "field-#{columns}-column") do
        content_tag(:div, class: "font_family_#{number}_") do
          label_tag("#{model}_#{long}_#{long}_#{number}", name, class: "#{long} remember-active", id: "#{long}_#{number}-tab") +
          radio_button_tag("#{model}[#{long}]", "#{long}_#{number}", true)
        end
      end

    else

      content_tag(:div, class: "field-#{columns}-column") do
        content_tag(:div, class: "font_family_#{number}_") do
          label_tag("#{model}_#{long}_#{long}_#{number}", name, class: "#{long} remember-inactive", id: "#{long}_#{number}-tab") +
          radio_button_tag("#{model}[#{long}]", "#{long}_#{number}", false)
        end
      end

    end
  end

  def label_and_description(title, description)
    concat(title_4(title))
    concat(spacing_static('b', '1'))
    concat(color_darkgrey(description))
    spacing_static('b', 'half')
  end

  def social_icon_and_input(social, icon, f, attr, placeholder)
    content_tag(:div, class: "flex padding-top-1") do
      concat(
        content_tag(:div, class: "social-icon-container") do
          content_tag(:div, class: "") do
            content_tag(:div, class: social) do
              content_tag(:i, '', class: icon)
            end
          end
        end
      )
      concat(
        content_tag(:div, class: "social-input-container") do
          f.text_field attr, placeholder: placeholder, class: 'text-field'
        end
      )
    end
  end

end