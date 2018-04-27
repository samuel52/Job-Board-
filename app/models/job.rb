class Job < ApplicationRecord
	belongs_to :user

  has_attached_file :job_img, styles: { medium: "300x300>", job_show: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :job_img, content_type: /\Aimage\/.*\z/

  def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
		
	end

end