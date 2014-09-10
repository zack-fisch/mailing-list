class Contact < ActiveRecord::Base
	has_no_table

	column: :name, :string
	column: :email, :string
	column: :content, :string

	validates :name, presence: true
	validates :email, presence: true, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
	validates :content, presence: true, length: { maximum: 500 }
end
