module UsersHelper
  def simple_highlight(text)
    return text if params[:query].blank? || text.blank? 
    return text if not text.to_s.downcase.split(/\s|-/).include?(params[:query].downcase)
    return highlight(CGI.escape_html(text.to_s), params[:query], highlighter: '<span style="background-color: #FFFF00">\1</span>')
  end
end
