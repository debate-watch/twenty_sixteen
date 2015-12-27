require 'json'

module TwentySixteen
  class Candidate

    CANDIDATES_JSON = File.dirname(__FILE__) + '/candidates.json'

    def self.all
      JSON.parse(File.read(CANDIDATES_JSON), :symbolize_names => true)
    end

    def self.democrat
      all.select{|candidate| candidate[:party] == "Democrat"}
    end

    def self.republican
      all.select{|candidate| candidate[:party] == "Republican"}
    end

    def self.independent
      all.select{|candidate| candidate[:party] == "Independent"}
    end

    def self.find_by_url(url)
      all.find{|candidate| candidate[:url] == url}
    end

    # assumes uniqueness of last_names...
    def self.find_by_last_name(last_name)
      all.find{|candidate| candidate[:last_name] == last_name}
    end
  end
end
