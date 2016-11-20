class CatalogueController < ApplicationController
  

  def index
    @catalogue = Catalogue.all
  end
end
