class VisitorsController < ApplicationController
  before_action :set_secciones, except: [:paginas]

  def pagina
    @pagina = Pagina.find(params[:pagina])
    @seccion = @pagina.seccion
    @mostrar_anuncio = current_user ? false : true
    add_breadcrumb @pagina.nombre, @pagina
  end

  def paginas
    @seccion = Seccion.find(params[:id])
    @paginas = @seccion.paginas.page(params[:page])
  end

  private

  def set_secciones
    @secciones = Seccion.activas
  end
end
