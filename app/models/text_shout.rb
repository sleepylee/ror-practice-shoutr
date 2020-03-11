class TextShout < ApplicationRecord
  validates :body, presence: true, length: { in: 2..145 }
end
