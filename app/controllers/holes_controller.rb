class HolesController < ApplicationController

 def create
 
# We need to get the course so that Rails knows where to assign the hole
@course = Course.find(params[:course_id])
 
# Here we create a new hole based on the course data from our form (params[:hole])
@hole = @course.holes.create(hole_params)
 
# Once the course is saved, we redirect the user back to the course they were viewing
redirect_to course_path(@course)
 
end

# This needs to be at the bottom (it may be there, but you'll have to add your params)

# By default, Rails 4 does not trust input from the scary internet.
# You need to tell it what params (form fields, really) are acceptable
def hole_params
params.require(:hole).permit(:hole_number, :par, :handicap, :yardage)
end
end
