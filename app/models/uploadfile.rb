class Uploadfile < ApplicationRecord
	belongs_to :post
	attachment :uploadfile
end
