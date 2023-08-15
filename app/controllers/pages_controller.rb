class PagesController < ApplicationController
  def index
    @characters = Character.all
  end
  def buscar 
    def buscar
        def buscar
          case params[:tipo_busqueda]
          when 'casa'
            @characters = Character.where(house: params[:casa])
          when 'locacion'
            @characters = Character.where(location: params[:locacion])
          when 'nombre'
            @characters = Character.where(name: params[:nombre])
          else
            @characters = Character.all
          end
        end        
    end
  end
end
