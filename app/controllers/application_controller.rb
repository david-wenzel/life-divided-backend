class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
def all_sections
  Section.all.order(updated_at: :desc).to_json(include: :goals)
end

end
