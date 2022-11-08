class Show < ActiveRecord::Base
has_many :characters
belongs_to :network
has_many :actors, through: :characters

def actors_list
    self.actors.collect do |char|
        "#{char.first_name} #{char.last_name}"
    end
end

end