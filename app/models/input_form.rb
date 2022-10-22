class InputForm < ApplicationRecord
  validates :title, presence: true, length: {maximum: 255}
  validates :description, allow_blank: true, length: {maximum: 2_000}
end
