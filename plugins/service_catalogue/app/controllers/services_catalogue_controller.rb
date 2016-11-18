class ServicesCatalogueController < ApplicationController
  

  def index
    @services_catalogue = ServicesCatalogue.all
  end
end
