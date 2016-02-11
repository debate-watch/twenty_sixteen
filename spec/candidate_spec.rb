require 'pry'

module TwentySixteen
  RSpec.describe Candidate do
    let(:active_dems){
      TwentySixteen::Candidate.where({:party=>"Democrat",:campaign_status=>"active"})
    }
    let(:active_gops){
      TwentySixteen::Candidate.where({:party=>"Republican",:campaign_status=>"active"})
    }

    describe '.all' do
      it "parses a valid candidates.json file returns an array of ruby hashes" do
        candidates = TwentySixteen::Candidate.all
        expect(candidates).to be_kind_of(Array)
        expect(candidates).not_to be_empty
        expect(candidates.first).to be_kind_of(Hash)
      end
    end

    describe '.democrat' do
      it "returns an array of matching candidates, dems only" do
        dems = TwentySixteen::Candidate.democrat
        expect(dems).to be_kind_of(Array)
        expect(dems).not_to be_empty
        expect(dems.first).to be_kind_of(Hash)
      end
    end

    describe '.republican' do
      it "returns an array of matching candidates, reps only" do
        reps = TwentySixteen::Candidate.republican
        expect(reps).to be_kind_of(Array)
        expect(reps).not_to be_empty
        expect(reps.first).to be_kind_of(Hash)
      end
    end

    describe '.independent' do
      it "returns an array of matching candidates, indies only" do
        indies = TwentySixteen::Candidate.independent
        expect(indies).to be_kind_of(Array)
        expect(indies).not_to be_empty
        expect(indies.first).to be_kind_of(Hash)
      end
    end

    describe '.active' do
      it "returns an array of candidates having a campaign_status of 'active'" do
        expect(active_dems.map{|c| c[:last_name]}.sort).to eql(["Clinton","Sanders"])
        expect(active_gops.map{|c| c[:last_name]}.sort).to eql(["Bush", "Carson", "Cruz", "Kasich", "Rubio", "Trump"])
      end
    end

    describe '.find_by_url' do
      it "returns a candidate whose campaign url matches the paramater" do
        hrc = TwentySixteen::Candidate.find_by_url("https://www.hillaryclinton.com/")
        expect(hrc).to be_kind_of(Hash)
      end
    end

    describe '.find_by_last_name' do
      it "returns a candidate whose last name matches the paramater" do
        donald = TwentySixteen::Candidate.find_by_last_name("Trump")
        expect(donald).to be_kind_of(Hash)
      end
    end

    describe '.where' do
      it "returns a candidate whose attributes match the paramater" do
        parties = active_dems.map{|c| c[:party] }.uniq
        expect(parties).to eql(["Democrat"])
      end
    end
  end
end
