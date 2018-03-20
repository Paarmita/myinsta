class Pic < ApplicationRecord
	#er models
	 acts_as_votable
    belongs_to :user

    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	# has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, presence: true,
 #  	validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  	# validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # template for image in paperclip gem
end
