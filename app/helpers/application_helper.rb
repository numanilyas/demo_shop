module ApplicationHelper
  def full_title(page_title)
    base_title = "Home of Embroibered Products - Embroidery Shop"
    if page_title.empty?
      base_title
    else
      "#{page_title} - Embroidery Shop"
    end    
  end
  
end
