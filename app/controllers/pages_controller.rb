class PagesController < ApplicationController

	def home
		
		x = ViewCounter.find_by(page_name: "home")

		if x == nil
			x = ViewCounter.new
			x.view_count = 1
			x.page_name = "home"
			x.save
		else
			x.view_count += 1
			x.save
		end
	end


	def about

		x = ViewCounter.find_by(page_name: "about")

		if x == nil
			x = ViewCounter.new
			x.view_count = 1
			x.page_name = "about"
			x.save
		else
			x.view_count += 1
			x.save
		end
	end

	def contact

		x = ViewCounter.find_by(page_name: "contact")

		if x == nil
			x = ViewCounter.new
			x.view_count = 1
			x.page_name = "contact"
			x.save
		else
			x.view_count += 1
			x.save
		end
	end


end