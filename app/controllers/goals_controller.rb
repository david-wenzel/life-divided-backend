class GoalsController < ApplicationController

    # this controller handles goals routes


    # Add a new goal
    post "/goals" do 
        goal = Goal.create(
        goal: params[:goal],
        section_id: params[:section_id]
    )
    goal.to_json
    end
    
# update a goal
    patch "/goals/:id" do
        goal = Goal.find_by(id: params[:id])
        goal.update(
            goal: params[:goal]
        )
        goal.to_json
    end


end
