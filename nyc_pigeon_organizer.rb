def nyc_pigeon_organizer(data)
    pigeon_data_by_name = {}
  
    data.each do | attribute, attribute_details |
        attribute_details.each do | attributes, pigeon_names |
            pigeon_names.each do | name |
              pigeon_data_by_name[name] ||= {}
              pigeon_data_by_name[name]
            end
        end
    end
end
