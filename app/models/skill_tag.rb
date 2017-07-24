class SkillTag < ApplicationRecord
  has_many :user_skill_tag

  validates :name,
            presence: true
end
