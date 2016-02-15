module ApplicationHelper
  # Returns the full title on a per-page basis.
  # If title is not provided for a page it will display base_title only without |
  # Titles are useful for saving favorites, displaying page title in tabs, searchable pages in search engines
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
