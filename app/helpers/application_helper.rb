module ApplicationHelper
  def full_title(page_title)
    base_title = "Home of Embroibered Products - Emblem Embroiders"
    if page_title.empty?
      base_title
    else
      "#{page_title} - Emblem Embroiders"
    end    
  end
  
end
