class SectionsController < ApplicationController

# this controller hanldes sections

    get "/sections" do
        all_sections
    end

    # backend opperation only 
    delete "/sections/:id" do
        Section.find_by(id: params[:id])
        all_lists
    end


    post "/sections/new" do
        Section.create(
            title: params[:title]
        )
        # Section.all.order(updated_at: :desc).to_json(include: :goals)
        all_sections
    end

end