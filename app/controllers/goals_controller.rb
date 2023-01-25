class GoalsController < ApplicationController

    # this controller handles goals routes


    # Add a new goal
    post "/goals" do 
        Goal.create(
        goal: params[:goal],
        section_id: params[:section_id]
    )
        all_sections
    end

# update a goal
    patch "/goals/:id" do
        find_goal
        @goal.update(
            goal: params[:goal]
        )
        all_sections
    end

    # delete goal
    delete "/goals/:id" do
        find_goal
        @goal.destroy
        all_sections
    end


    private
    def find_goal
        @goal = Goal.find_by(id: params[:id])
      end


end
