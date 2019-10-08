require "pry"
def get_first_name_of_season_winner(data, season)
  # returns the first name of the season winner 
  data[season].each do |contestant_hashs|
    if contestant_hashs["status"] = "Winner"
      name = contestant_hashs["name"].split(" ")
      return name[0]
    end 
  end 
end

def get_contestant_name(data, occupation)
  # return the name of the women that has the specific occupation mentioned 
  data.each do |season_hash, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # return the number of contestants that have come from the hometown
  hometown_contestants = 0
  data.each do |season_hash, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        hometown_contestants += 1
      end 
    end 
  end 
  hometown_contestants
end

def get_occupation(data, hometown)
  # returns the occupation of the first contestant from the hometown 
  data.each do |season_hash, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  # return the average age of all the contestants for a season 
  count = 0 
  age = 0
  data[season].each do |contestant_hash|
    age += contestant_hash["age"].to_f
    count += 1
  end 
  average_age = age / count
  average_age.round
end
