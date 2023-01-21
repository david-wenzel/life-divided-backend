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

    patch "/goals/:id" do
        e



end
