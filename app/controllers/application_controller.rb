class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

def all_sections
  Section.all.order(title: :asc).to_json(include: :goals)
end

end
