module ApplicationHelper
    
    def title_set (title = '')
       base = "Deeper" 
       if title.empty?
           base
       else
          title + '|' + base 
       end
    end
end
