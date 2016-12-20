# your code goes here

require "pry"
def begins_with_r(array)
  array.each do|tool|
    if !(tool.start_with?('r'))
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do|word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find{|word| word.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  array.select do |item|
    item.class==String
  end
end

def count_elements(array)
  count=[]
  array.each do |hash|
    hash[:count]=array.count(hash)
    count.push(hash)
    array.delete_if{|item| item==hash}
  end
  count
end

def merge_data(keys, data)
  merged_array=[]
  keys.each do |key|
    key.each do |prop, value|
      merged_array.push(key.merge(data[0][value]))
    end
  end
  merged_array
end

def find_cool(cool)
  cool.select do |hash|
   hash.has_value?('cool')
  end
end

def organize_schools(schools)
  organized_schools={}
  locations=[]
  schools.values.uniq.each do |location|
    locations.push(location[:location])
  end
  i=0
  while i<locations.length
    city=locations[i]
    current_city_schools=[]
    schools.each do |key, value|
      if value[:location]==city
        current_city_schools.push(key)
      end
    end
    organized_schools[city]=current_city_schools
    i+=1
  end
  organized_schools
end
