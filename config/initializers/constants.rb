module BcwConstants

  class Cities
    WASHINGTON_DC = { :name => 'Washington, DC', :name_short => "DC", :url_slug => 'dc' }
    ATLANTA = { :name => 'Atlanta', :name_short => "Atlanta", :url_slug => 'atlanta' }

    ALL_CITIES = [ WASHINGTON_DC, ATLANTA ]


    def self.find_city_by_url_slug(slug)
      ALL_CITIES.each do |city|
        return city if city[:url_slug] == slug
      end
    end

  end

end