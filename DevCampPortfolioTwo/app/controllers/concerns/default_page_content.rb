module DefaultPageContent
  extend ActiveSupport::Concern 
  
  included do 
     before_filter :set_page_deagults
  end
  
  def set_page_deagults
    @page_title="Jesse Mcalister's Portfolio"
    @seo_keywords = "Jesse Mcalister portfolio"
  end  
end