class TestController < ApplicationController
	def token_to_user
		@user = User.where("device_token = ?", params[:device_token])
		respond_to do |format|
			format.json { render :json => @user.to_json(:include => {
					:groups => { :only => ["id", "groupName"] }} ) 
			}
		end
	end
	def group_id_to_group
		@group = Group.find(params[:id])
		respond_to do |format|
			format.json { render :json => @group.to_json(:include => {
					:individuals => { :include => {
					:courses => { :include =>
					:lectures} }}} )
			}
		end
	end
end
