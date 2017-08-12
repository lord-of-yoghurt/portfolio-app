module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "David Ordovskiy | Portfolio"
    @seo_keywords = "David Ordovskiy portfolio" # TODO: complete this
  end
end
