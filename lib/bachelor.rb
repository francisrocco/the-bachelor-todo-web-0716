require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each_with_index do |contestants, idx|
    name = data[season][idx]["name"]
    contestants.each do |attribute, answer|
      return name.split.first if answer = "Winner"
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, people|
    people.each_with_index do |contestants, idx|
      name = data[seasons][idx]["name"]
      contestants.each do |attribute, answer|
        return name if answer == occupation
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |seasons, people|
    people.each_with_index do |contestants, idx|
      contestants.each do |attribute, answer|
        hometown_count += 1 if answer == hometown
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |seasons, people|
    people.each_with_index do |contestants, idx|
      occupation = data[seasons][idx]["occupation"]
      contestants.each do |attribute, answer|
        return occupation if answer == hometown
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_count = 0
  data[season].each do |contestants|
    contestants.each do |attribute, answer|
      age_count += answer.to_f if attribute = "age"
    end
  end
  (age_count / data[season].length).round
end
