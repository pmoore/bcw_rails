module ApplicationHelper

  def title(page_title, options={})
    content_for(:title, page_title.to_s)
    return content_tag(:h1, page_title, options)
  end

  def meta_title(meta_title, options={})
    content_for(:meta_title, meta_title.to_s)
    return content_tag(:meta, meta_title, options)
  end

  def meta_description(meta_description, options={})
    content_for(:meta_description, meta_description.to_s)
    return content_tag(:meta, meta_description, options)
  end

  def meta_keywords(meta_keywords, options={})
    content_for(:meta_keywords, meta_keywords.to_s)
    return content_tag(:meta, meta_keywords, options)
  end

  def is_active?(page_name)
    true if params[:action] == page_name
  end

  def city_name_pretty
    @bcw_city[:name]
  end

  def city_name_short_pretty
    @bcw_city[:name_short]
  end

end
