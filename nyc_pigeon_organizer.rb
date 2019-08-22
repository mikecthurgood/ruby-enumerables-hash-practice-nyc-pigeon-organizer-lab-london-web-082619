def nyc_pigeon_organizer(data)
    pigeon_data_by_name = {}
  
    #split out original data into each attribute and it's details
    data.each do | attribute, attribute_details |
      
    #further splits out each attribute detail into it's specific attributes and the name of the pigeon 
        attribute_details.each do | specific_attributes, pigeon_names |
          
          #iterates through the pigeon names and acts on each one
            pigeon_names.each do | pigeon_name |
              pigeon_data_by_name[pigeon_name] ||= {}
              pigeon_data_by_name[pigeon_name][attribute] = []
              pigeon_data_by_name[pigeon_name][attribute] << specific_attributes.to_s
            end
        end
    end
end
