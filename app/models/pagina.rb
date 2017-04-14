class Pagina < ActiveRecord::Base
  belongs_to :seccion

  extend FriendlyId
  friendly_id :nombre, use: [:slugged, :finders]

  mount_uploader :imagen, ImagenUploader
  serialize :imagen, JSON # If you use SQLite, add this line.

  paginates_per 15

  validates :nombre, presence: true, uniqueness: true
  validates :seccion, presence: true

  scope :activas, ->{ where(active: true) }
end
