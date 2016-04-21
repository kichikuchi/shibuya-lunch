class Restaurant < ActiveRecord::Base
	validates :name, presence: { message: "入力してください" }
	validates :latitude, presence: { message: "入力してください" }
	validates :longitude, presence: { message: "入力してください" }
	validates :note, presence: { message: "入力してください" }
	validates :tabelog_url, presence: { message: "入力してください" }
end
