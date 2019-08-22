def nyc_pigeon_organizer(data)
    pigeon_data_by_name = {}
  
    # split out original data into each attribute and it's details
    data.each do | attribute, attribute_details |
      
    # further splits out each attribute detail into it's specific attributes and the name of the pigeon 
        attribute_details.each do | specific_attributes, pigeon_names |
          
          # iterates through the pigeon names in order to act on each one
            pigeon_names.each do | pigeon_name |
              
            # adds each pigeon name to it's own key in the new hash (pigeon_data_by_name) 
            # uses ||= to add each unique value as a new key in the hash rather than overwrite
              pigeon_data_by_name[pigeon_name] ||= {}
              
            # assigns the original attribute key to the corresponding pigeon name 
            # attribute assigned as 
              pigeon_data_by_name[pigeon_name][attribute] ||= []
              pigeon_data_by_name[pigeon_name][attribute] << specific_attributes.to_s
            end
        end
    end
end
