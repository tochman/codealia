class Workshop < ActiveRecord::Base
  belongs_to :curriculum, polymorphic: true
end
