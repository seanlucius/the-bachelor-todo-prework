def get_first_name_of_season_winner(data, season)
  data[season].each do |season_collection|
    season_collection.each do |key, value|
      if value == "Winner"
        return season_collection["name"].split(" ")[0]
      end 
    end 
  end 
end


def get_contestant_name(data, occupation)
  data.each do |seasons, season_arrays|
    season_arrays.each do |contestants|
      contestants.each do |key, value|
        if value == occupation 
          return contestants["name"]
        end 
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |seasons, season_arrays|
    season_arrays.each do |contestants|
      contestants.each do |key, value|
        if value == hometown 
          i += 1
        end 
      end 
    end 
  end 
  i
end

def get_occupation(data, hometown)
  data.each do |seasons, season_arrays|
    season_arrays.each do |contestants|
      contestants.each do |key, value|
        if value == hometown 
          return contestants["occupation"]
        end
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  ages = 0
  data[season].each do |season_collection|
    season_collection.each do |key, value|
      if key == "age"
        ages += value.to_f
      end 
    end 
  end 
end
