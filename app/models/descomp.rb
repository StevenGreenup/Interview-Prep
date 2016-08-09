class Descomp < ApplicationRecord
has_many :bosses
validates :company, presence: true
validates :url, presence: true


end
