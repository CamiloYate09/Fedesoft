class ArticulosController < ApplicationController
    http_basic_authenticate_with name: "mguerra", password: "mguerra", except: [:index, :show]
    def index
        @articulos = Articulo.all
    end

    def new
    end

    def create
        #render plain: params[:articulo].inspect

        @articulo = Articulo.new(get_articulo_params)

        if @articulo.save
            flash[:notice] = "Artículo creado correctamente"
            redirect_to @articulo
        else
            flash[:error] = "No se logró crear artículo"
            render 'new'
        end
    end

    def show
        @articulo = Articulo.find(params[:id])
    end

    private
        def get_articulo_params
            params.require(:articulo).permit(:title, :text)
        end
end
