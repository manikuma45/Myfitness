class MenuRelationship < ApplicationRecord
  belongs_to :menu
  belongs_to :exercise
end
