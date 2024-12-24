class Affair < ApplicationRecord
  validates :name, presence: true
  belongs_to :todolist
end