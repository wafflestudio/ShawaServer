class TestController < ApplicationController
	def index
		@group = Group.all[0]
		respond_to do |format|
			format.json { render :json => @group.to_json(:include => {
					:individuals => { :include => {
					:courses => {:include =>
					:lectures} }}} ) 
			}
=begin
			format.json { render :json => @group.to_json(:include =>
					{:individuals => { :only => ["id"] } }, :only => ["id",
					"groupName"]) }
=end
		end
	end
end
