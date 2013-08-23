class TestController < ApplicationController
	def token_to_user
		@user = User.where("device_token = ?", params[:device_token])
		respond_to do |format|
			format.json { render :json => @user.to_json(:include => {
					:groups => { :only => ["id", "groupName", "groupType"] }} ) 
			}
		end
	end
	def group_id_to_group
		@group = Group.find(params[:id])
		respond_to do |format|
			format.json { render :json => @group.to_json() }
=begin
			format.json { render :json => @group.to_json(:include => {
					:individuals => { :include => {
					:courses => { :include =>
					:lectures} }}} )
			}
=end
			format.html
		end
	end
	def individual_id_to_individual
		@individual = Individual.find(params[:id])
		respond_to do |format|
			format.json { render :json => @individual.to_json(:include => {
					:courses => { :include =>
					:lectures } }) 
			}
		end
	end

	def update_individual
		@jsonString = params
		@jsonString = @jsonString.to_s.gsub("=>", ": ")
		require 'yajl'
		@parser = Yajl::Parser.new
		@hash = @parser.parse(@jsonString)
		
		id = @hash['idForServer']
		individual = Individual.find(id)
		individual.userName = @hash['userName']
		
		individual.courses.each do |c|
			c.lectures.each do |l|
				l.delete
			end
			c.delete
		end

		@hash_courses = @hash['courses']
		Rails.logger.info @hash_courses	
		@hash_courses.each do |c|
			Rails.logger.info @hash_courses[1]
			course = Course.new
			course.courseName = c['courseName']
			course.individual_id = @hash['idForServer']
			@hash_lectures = c['lectures']
			@hash_lectures.each do |l|
				lecture = Lecture.new
				lecture.day = l['day']
				lecture.period = l['period'].to_f
				lecture.duration = l['duration'].to_f
				lecture.location = l['location']
				lecture.save

				course.lectures.push(lecture)
			end
			course.save

			individual.courses.push(course)
			Rails.logger.info "add course"
		end

		individual.save
		Rails.logger.info "asdfasdfasdfasdf"	
		respond_to do |format|
			format.html
		end
	end
end
