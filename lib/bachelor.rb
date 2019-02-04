def get_first_name_of_season_winner(data, season)
  data[season].each do |season_collection|
    season_collection.each do |key, value|
      if value == "Winner"
        return season_collection["name"].split(" ")
      end 
        
    end 
  end 
end


def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
