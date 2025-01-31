class SectionsController < ApplicationController

# this controller hanldes sections

    get "/sections" do
        all_sections
    end

    # backend opperation only 
    delete "/sections/:id" do
        section = Section.find_by(id: params[:id])
        section.destroy
        # all_sections
        section.to_json
    end


    post "/sections/new" do
        Section.create(
            title: params[:title]
        )
        all_sections
    end

end


