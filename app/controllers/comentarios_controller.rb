class ComentariosController < ApplicationController
    http_basic_authenticate_with name: "nasugo", password: "JEPA", only: :destroy

    def create

        @articulo = Articulo.find(params[:articulo_id])

        @comentario = @articulo.comentarios.create(comentario_params)

        redirect_to articulo_path(@articulo)
    end

    private
        def comentario_params
            params.require(:comentario).permit(:nombre, :cuerpo)
        end
end
