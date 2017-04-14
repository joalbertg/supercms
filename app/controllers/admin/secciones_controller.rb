class Admin::SeccionesController < InheritedResources::Base
  before_action :authenticate_user!
  layout 'admin'

  def create
    create! do
      admin_secciones_path
    end
  end

  def update
    update! do
      admin_secciones_path
    end
  end

  def seccion_params
    params.require(:seccion).permit(:nombre, :active)
  end
end
