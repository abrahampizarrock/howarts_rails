class PagesController < ApplicationController
  def index
    @characters = Character.all
  end
  def buscar
    case params[:tipo_busqueda]
    when 'nombre'
      @characters = Character.where(name: params[:nombre])
    when 'casa'
      @characters = Character.where(house: params[:casa])
    when 'locacion'
      @characters = Character.where(location: params[:locacion])
    else
      @characters = Character.all
    end
  end        
end
