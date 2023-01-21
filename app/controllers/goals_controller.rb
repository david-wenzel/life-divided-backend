class GoalsController < ApplicationController
    get "/goals" do
        events = Goal.order(created_at: :desc)
        events.to_json
    end
end
