require 'json'

module TwentySixteen
  class Candidate
    def self.all
      JSON.parse(File.read("lib/twenty_sixteen/candidates.json"), :symbolize_names => true)
    end

    def self.democrat
      all.select{|candidate| candidate[:party] == "Democrat"}
    end

    def self.republican
      all.select{|candidate| candidate[:party] == "Republican"}
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
