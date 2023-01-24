class SectionsController < ApplicationController

# this controller hanldes sections routes

   # Get all sections alphabetically by name
    # return a JSON response with an array of sections data, including nested goals data for each section
    get "/sections" do
        # section = Section.all.order(:updated_at)
        # Section.all.order(updated_at: :desc).to_json(include: :goals)
        all_lists
    end

    # post "/sections" do
    #     section = Section.create(
    #         title: params[:title]
    #     )
    #     section.to_json

    # end

    # backend opperation only 
    delete "/sections/:id" do
        section = Section.find_by(id: params[:id])
        section.destroy
        section.to_json
    end


    post "/sections/new" do
        Section.create(
            title: params[:title]
        )
        # Section.all.order(updated_at: :desc).to_json(include: :goals)
        all_lists
    end

end