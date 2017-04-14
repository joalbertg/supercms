class Seccion < ActiveRecord::Base
  has_many :paginas, dependent: :destroy

  scope :activas, ->{ where(active: true) }
end
