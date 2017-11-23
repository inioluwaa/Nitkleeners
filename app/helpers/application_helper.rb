module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Nitkleeners'
    if page_title.empty?
      base_title + ' | ' + 'Trusted For Neat Jobs'
    else
      base_title + ' | ' + page_title
    end
  end
end
