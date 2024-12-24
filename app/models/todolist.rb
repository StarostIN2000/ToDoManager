class Todolist < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :affairs
end