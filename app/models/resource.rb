class Resource < ActiveRecord::Base
  belongs_to :workshop, polymorphic: true
end
