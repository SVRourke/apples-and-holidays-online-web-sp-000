require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter =  holiday_hash[:winter]
  supplies = []
  winter = winter.each do |key, val|
    val.each do |item|
      supplies << item
    end
  end
  supplies
end

  my_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }


def all_supplies_in_holidays(holiday_hash)
  holidays = holiday_hash.each do |season, hash|
    puts "#{season.to_s.capitalize}:"
    # puts hash

    hash.collect do |holiday, supplies_array|
      # seasons_supplies = Array.new
      print "  #{holiday}: #{supplies_array.join(", ")}"
      # supplies_array.each do |item|
      #   # puts "+-#{item}"
      #   seasons_supplies << item
      # end
    end
    # puts "  #{seasons_supplies.join(", ")}"

    #
    # hash.each do |holiday, supplies|
    #   event = holiday.to_s.split("_").collect {|element| element.capitalize}.join(" ")
    #   supps = supplies.collect do |supp|
    #      supp.split(" ").each {|word| word.capitalize}.join(" ")
    #   end
      # puts "  #{event}: #{supps.join(", ")}"
      # puts supps.join(", ")
      # puts "+++++++++"
    # end
  end
end
all_supplies_in_holidays(my_hash)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
