class Descomp < ApplicationRecord
  belongs_to :user
has_many :bosses
validates :company, presence: true
validates :url, presence: true


end
