def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
      contestant.each do |attribute, value|
        if value == "Winner"
          # return only the first item after splitting the full
          # name into an array
          return contestant["name"].split(" ").shift
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if occupation == value
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, contestants|
      contestants.each do |contestant|
        contestant.each do |key, value|
          if hometown == value
            i += 1
          end
        end
      end
    end
    i
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if hometown == value
          return contestant["occupation"]
        end
      end
    end
  end
end


def get_average_age_for_season(data, season)
  # code here
  contestant_ages = [ ]
  data.each do |season_number, contestants|
    if season_number == season
      contestant_ages = contestants.collect do |contestant|
        contestant["age"].to_f
        end
      end
    end


    average_age = contestant_ages.inject { |sum, element| sum + element } / contestant_ages.size
    average_age.round
end
