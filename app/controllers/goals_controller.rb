class GoalsController < ApplicationController
 # Add a new goal
 post "/goals" do 
    event = Goal.create(
        goal: params[:goal],
        section_id: params[:section_id]
    )
    event.to_json
end
end
