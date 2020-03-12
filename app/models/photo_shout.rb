class PhotoShout < ApplicationRecord
  has_attached_file :image, styles: { thumb: "200x200" }

  validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes },
    presence: true
end
