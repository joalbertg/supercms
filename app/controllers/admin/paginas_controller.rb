class Admin::PaginasController < InheritedResources::Base
  before_action :authenticate_user!
  layout 'admin'

  belongs_to :seccion

  def create
    create! do
      admin_seccion_paginas_path(@seccion)
    end
  end

  def update
    update! do
      admin_seccion_paginas_path(@seccion)
    end
  end

  def pagina_params
    params.require(:pagina).permit(
      :nombre,
      :texto,
      :active,
      :imagen)
  end
end
