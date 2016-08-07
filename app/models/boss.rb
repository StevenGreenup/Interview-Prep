class Boss < ApplicationRecord
belongs_to :user
belongs_to :descomp
serialize :langcount, Array
serialize :arch, Array
serialize :clone, Array
end
