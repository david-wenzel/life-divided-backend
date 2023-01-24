class GoalsController < ApplicationController

    # this controller handles goals routes


    # Add a new goal
    post "/goals" do 
        Goal.create(
        goal: params[:goal],
        section_id: params[:section_id]
    )
        # Section.all.to_json(include: :goals)
        all_sections
    end

# update a goal
    patch "/goals/:id" do
        goal = Goal.find_by(id: params[:id])
        goal.update(
            goal: params[:goal]
        )
        all_sections
    end

    # delete goal
    delete "/goals/:id" do
        goal = Goal.find_by(id: params[:id])
        goal.destroy
        all_sections
    end


end
