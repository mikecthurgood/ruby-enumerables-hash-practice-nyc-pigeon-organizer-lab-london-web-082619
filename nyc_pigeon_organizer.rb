def nyc_pigeon_organizer(data)
    pigeon_data_by_name = {}
  
    #split out original data into each attribute and it's details
    data.each do | attribute, attribute_details |
      
      
        attribute_details.each do | attributes, pigeon_names |
            pigeon_names.each do | pigeon_name |
              pigeon_data_by_name[pigeon_name] ||= {}
              pigeon_data_by_name[pigeon_name][attribute] = []
              pigeon_data_by_name[pigeon_name][attribute] << attributes.to_s
            end
        end
    end
end
