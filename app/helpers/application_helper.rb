module ApplicationHelper

  def logo                                                                             
    image_tag("logo.png", :alt => "OBTK", :height => "130px")                     
  end                                                                                  
                                                                                       
  def title                                                                            
    base_title = "OBTK"                                   
    if @title.nil?                                                                     
      base_title                                                                       
    else                                                                               
      "#{base_title} | #{@title}"                                                      
    end                                                                                
  end
end
