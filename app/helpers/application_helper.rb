module ApplicationHelper
  def page_class
    [@page.root.title.downcase.gsub(' ', '-'), @page.title.downcase.gsub(' ', '-')].uniq.join(' ')
  end
end
